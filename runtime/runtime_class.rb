# Class is-a Object, but Object has-a class. A class stores all the methods
# available to members of that class.
class RuntimeClass < RuntimeObject
  attr_reader :methods

  def initialize(superclass = nil)
    @methods = {}
    if superclass.nil? && defined? Runtime
      superclass = Runtime["Object"]
    end
    @superclass = superclass

    # When setting up the environment, it might be problematic to determine
    # a class's class. Objects require knowing what their class is, but
    # classes are an object too... the solution is to temporarily set class's
    # class to nil as we set everything up, then manually set class's class
    # to itself later.
    # Runtime is defined during the bootstrapping process; see runtime_boot.rb
    if defined? Runtime
      super(Runtime["Class"])
    else
      super(nil)
    end
  end

  # find a method or die trying -- the attempt at getting a superclass's
  # implementation is OOP.
  def lookup(method)
    if @methods[method]
      @methods[method]
    elsif @superclass
      @superclass.lookup(method)
    else
      raise "Method not found: #{method}"
    end
  end

  # create a new instance of this class
  def new
    new_with_value(nil)
  end

  # create a new instance of this class w/ built-in Ruby value
  def new_with_value(value)
    RuntimeObject.new(self, value)
  end
end