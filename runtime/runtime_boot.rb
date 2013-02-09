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

def add_std_method(class_name, method_name, args = 0, &body)
  Runtime[class_name].methods[[method_name, args]] = body
end

def add_std_methods(class_name, methods)
  methods.each do |method|
    # puts "Creating method #{method[0]} w/ args #{method[1]}"
    Runtime[class_name].methods[[method[0], method[1]]] = method[2]
  end
end

# Step 9: add the new method to class to allow syntax like Object.new
add_std_method("Class", "new", 0) do |receiver, args| 
  receiver.new
end

# Step 10: add the print method
add_std_method("Object", "print", 1) do |receiver, args| 
  print args.first.value
  Runtime["nil"]
end

add_std_method("Object", "println", 1) do |receiver, args|
  puts args.first.value
  Runtime["nil"]
end

# Step 11: make the basic math operations
add_std_methods("Number", [
  ["+", 1, proc { |r, a| Runtime["Number"].new_with_value(r.value + a.first.value) }],
  ["-", 1, proc { |r, a| Runtime["Number"].new_with_value(r.value - a.first.value) }],
  ["*", 1, proc { |r, a| Runtime["Number"].new_with_value(r.value * a.first.value) }],
  ["/", 1, proc { |r, a| Runtime["Number"].new_with_value(r.value / a.first.value) }],
  ["%", 1, proc { |r, a| Runtime["Number"].new_with_value(r.value % a.first.value) }],

  [">", 1, proc { |r, a| r.value > a.first.value ? Runtime["true"] : Runtime["false"] }],
  ["<", 1, proc { |r, a| r.value < a.first.value ? Runtime["true"] : Runtime["false"] }],
  [">=", 1, proc { |r, a| r.value >= a.first.value ? Runtime["true"] : Runtime["false"] }],
  ["<=", 1, proc { |r, a| r.value <= a.first.value ? Runtime["true"] : Runtime["false"] }],
  ["==", 1, proc { |r, a| r.value == a.first.value ? Runtime["true"] : Runtime["false"] }],
  ["!=", 1, proc { |r, a| r.value != a.first.value ? Runtime["true"] : Runtime["false"] }],
])

# Step 12: add basic string methods
add_std_methods("String", [
  ["+", 1, proc { |r, a| Runtime["String"].new_with_value(r.value + a.first.value) }],
  ["charAt", 1, proc { |r, a| Runtime["String"].new_with_value(r.value[a.first.value]) }],
  ["length", 0, proc { |r, a| Runtime["Number"].new_with_value(r.value.size) }],
])