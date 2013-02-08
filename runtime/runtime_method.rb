# Represents a method and can be "called"
class RuntimeMethod

  # corresponds to something like
  #
  # function(params) { body }
  def initialize(params, body)
    @params = params
    @body = body
  end

  # corresponds to receiver.method(args)
  def call(receiver, args)
    # create a new context for this method to be evaluated as
    context = RuntimeContext.new(receiver)

    # set context's local variables
    @params.each_with_index do |param, index|
      context.locals[param] = args[index]
    end

    @body.eval(context)
  end
end