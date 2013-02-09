# Internal representation of an object. All objects have a class and a value.
# A value is Ruby's representation of what an object really is.
class RuntimeObject
  attr_accessor :runtime_class, :value

  # Create a new object
  def initialize(runtime_class, value = self)
    @runtime_class = runtime_class
    @value = value
  end

  # Call a method on an object by asking its class to call the method if it exists.
  def call(method, args = [])
    @runtime_class.lookup(method, args.length).call(self, args)
  end
end