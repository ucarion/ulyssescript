# Set the entire Runtime up.

# Step 1: create Class
the_runtime_class = RuntimeClass.new

# Step 2: Class.class = Class
the_runtime_class.runtime_class = the_runtime_class

# Step 3: create Object
the_runtime_object = RuntimeClass.new

# Step 4: Object.class = Class
the_runtime_object.runtime_class = the_runtime_class

# Step 5: create the universal context, aka HRH "Runtime"
Runtime = RuntimeContext.new(the_runtime_object.new)

# Step 6: put Class and Object into Runtime
Runtime["Class"] = the_runtime_class
Runtime["Object"] = the_runtime_object

# Step 7: Make the basic classes too
Runtime["TrueClass"] = RuntimeClass.new
Runtime["FalseClass"] = RuntimeClass.new
Runtime["NilClass"] = RuntimeClass.new
Runtime["String"] = RuntimeClass.new
Runtime["Number"] = RuntimeClass.new

# Step 8: true, false, and nil are instances of TrueClass, FalseClass, and NilClass
Runtime["true"] = Runtime["TrueClass"].new_with_value(true)
Runtime["false"] = Runtime["FalseClass"].new_with_value(false)
Runtime["nil"] = Runtime["NilClass"].new_with_value(nil)

# Step 9: add the new method to class to allow syntax like Object.new
Runtime["Class"].methods["new"] = proc do |receiver, args|
   receiver.new
end

# Step 10: add the print method
Runtime["Object"].methods["print"] = proc do |receiver, args|
  print args.first.value
  Runtime["nil"] # note how I return my newly created nil, not Ruby's nil returned from print
end