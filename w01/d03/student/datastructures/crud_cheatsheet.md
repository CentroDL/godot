    # CRUD

CRUD is an Acronym for *C*reate, *R*ead, *U*pdate, and *D*estroy

# To the Docs!

[Arrays](http://www.ruby-doc.org/core-2.1.2/Hash.html)

What's the code to create an array
  create_array = []
  create_array.new(size, default_object)

What different methods can you use to access or read values from an array
  read_array [at_index]
  read_array.at(index)
  read_array.first
  read_array.last

What different methods are available to update values?
  array.unshift - puts at front
  array.push    - puts at back
  array.insert(index, element)
  array[rand_index] = element

What different methods are available to remove or destroy values?
  array.pop    - takes off the last
  array.shift  - retrieves and removes first item
  array.delete_at(index)
  array.delete("element")
  array.compact  - removes all nil values from array
  array.uniq    - removes all copied elements

> Create an array to demonstate the above. Explain it to your neighbor.
pj_makes_cheese = Array.new(4, "ha")

[Hashes](http://www.ruby-doc.org/core-2.1.2/Array.html)

What's the code to create a hash?
  hash = {}
  element = Hash.new
  element = create.new

What different methods can you use to access or read values from a hash?sub
  hash.keys
  hash.values
  hash[key]
  hash.each
  hash.default
  hash.each_value
  hash.fetch(key)

What different methods are available to update values?
  hash[key] = new value
  hash[new key] = value
  hash.store(key, value)


What different methods are available to remove or destroy values?
  hash.clear
  hash.delete{key}
  hash.delete_if

A predicate method is a method that returns true or false. Are there any predicate methods for Arrays?
  array.empty?
  array.include?("element")

