require_relative '.\parser'
require_relative '.\runtime'

class Interpreter
  def initialize
    @parser = Parser.new
  end

  # Set things off by getting the code to be evaluated.
  def interpret(code)
    @parser.parse(code).eval(Runtime)
  end
end

# We're re-opening Nodes from nodes.rb, this time adding actual
# implementation of the control structures. Variables that seem to
# pop out of nowhere are in fact from that nodes.rb file.
class Nodes
  def eval(context)
    return_val = nil
    nodes.each do |node|
      return_val = node.eval(context)
    end
    return_val || Runtime["nil"]
  end
end

class NumberNode
  def eval(context)
    Runtime["Number"].new_with_value(value)
  end
end

class StringNode
  def eval(context)
    Runtime["String"].new_with_value(value)
  end
end

class TrueNode
  def eval(context)
    Runtime["true"]
  end
end

class FalseNode
  def eval(context)
    Runtime["false"]
  end
end

class NilNode
  def eval(context)
    Runtime["nil"]
  end
end

class CallNode
  def eval(context)
    # if receiver is nil and this method has the same name as a local
    # variable, then we should instead return that local variable
    if receiver.nil? && context.locals[method] && arguments.empty?
      context.locals[method]
    else # method call, plain and simple
      if receiver
        value = receiver.eval(context)
      else
        value = context.curr_self
      end

      eval_args = arguments.map { |arg| arg.eval(context) }
      value.call(method, eval_args)
    end
  end
end

class GetConstantNode
  def eval(context)
    context[name]
  end
end

class SetConstantNode
  def eval(context)
    context[name] = value.eval(context)
  end
end

class SetLocalNode
  def eval(context)
    context.locals[name] = value.eval(context)
  end
end

class DefNode
  def eval(context)
    context.curr_class.methods[[name, params.length]] = RuntimeMethod.new(params, body)
  end
end

class ClassNode
  def eval(context)
    # try to re-open the class by seeing if it exists already
    target_class = context[name]

    unless target_class # so it doesn't exist, let's create it
      context[name] = target_class = RuntimeClass.new
    end

    # the new method has access to the context of the modified class
    body.eval(RuntimeContext.new(target_class, target_class))

    target_class
  end
end

class IfNode
  def eval(context)
    if condition.eval(context).value
      body.eval(context)
    end
  end
end

class UnlessNode
  def eval(context)
    unless condition.eval(context).value
      body.eval(context)
    end
  end
end

class WhileNode
  def eval(context)
    while condition.eval(context).value
      body.eval(context)
    end
  end
end

class UntilNode
  def eval(context)
    until condition.eval(context).value
      body.eval(context)
    end
  end
end