# string_assignment.rb

name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

# The above code will output "Alice" and then "Bob".
# Explanation -> When defining the 'name' variable a second time, it occupies
# a different memory address than the original name variable and is considered
# to be a different value container from the 'name' variable that save_name is
# pointing to.

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# The above code will output "BOB" and then "BOB" again.
# Explanation -> Because the upcase! method modifies the name variable directly,
# save_name will also change into the modified name value.
