# Takes care of keeping track of local and constant variables, the current value
# of self, and the current class being worked on.
class RuntimeContext
  attr_reader :locals, :curr_self, :curr_class

  @@constants = {}

  def initialize(curr_self, curr_class = curr_self.runtime_class)
    @locals = {}
    @curr_self = curr_self
    @curr_class = curr_class
  end

  # shorthand methods to replace Runtime.constans["..."] w/ Runtime["..."]
  def [](constant)
    @@constants[constant]
  end

  def []=(constant, value)
    @@constants[constant] = value
  end
end