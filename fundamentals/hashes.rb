# Hashes

# We can assign a hash to a variable.
number_hash = {one: 1, two: 2, three: 3}

# Now we can grab any of the three values stored as key value pairs. Let's grab the value of the one key:
number_hash[:one] # => 1
# We can also get the 'value' of the first key, which is the symbol :one.
number_hash.key(1)
