
# # 03 - Research and Technical Documentation
# ### Thursday, Dec 14th
#
# ## Assignment
# 3. Once you feel like you understand how it works, write down

#        * its arguments (name, data type, optional/required, default value if any)
#        * its return type
# 4. Write an example (in code) of how to use the method
#   * run your code to make sure your example is valid!

# ----------------------String---------------------------
# *****length*****
# counts characters in string
# arguments: no arguments
# return type: integer
# example:
puts "hello".length # => 5

# *****strip*****
# returns copy of str with leading and trailing whitespace removed
# arguments: no arguments
# return type: string
# example:

puts "     hello     ".strip   #=> "hello"
puts "\tgoodbye\r\n".strip     #=> "goodbye"

# *****split*****
# divides str into substrings returning an array of these substrings
# arguments: no arguments
# return type: array
# example:

puts "now's the time".split #=> ["now's","the", "time"]

"hello".split(//)               #=> ["h", "e", "l", "l", "o"]
"hello".split(//, 3)            #=> ["h", "e", "llo"]
"hi mom".split(%r{\s*})         #=> ["h", "i", "m", "o", "m"]

"mellow yellow".split("ello")   #=> ["m", "w y", "w"]
"1,2,,3,4,,".split(',')         #=> ["1", "2", "", "3", "4"]
"1,2,,3,4,,".split(',', 4)      #=> ["1", "2", "", "3,4,,"]
"1,2,,3,4,,".split(',', -4)     #=> ["1", "2", "", "3", "4", "", ""]

# *****start_with?*****
# divides str into substrings returning an array of these substrings
# arguments: no arguments
# return type: Boolean
# example:

"hello".start_with?("hell")               #=> true

# returns true if one of the prefixes matches.
"hello".start_with?("heaven", "hell")     #=> true
"hello".start_with?("heaven", "paradise") #=> false

# ----------------------Array---------------------------

# *****first*****
# Returns the first element, or the first n elements, of the array. If the array is empty, the first form returns nil, and the second form returns an empty array.
# arguments: no arguments
# return type: object or nil
# example:

a = [ "q", "r", "s", "t" ]
a.first     #=> "q"
a.first(2)  #=> ["q", "r"]

# *****delete_at*****
# Deletes the element at the specified index, returning that element, or nil if the index is out of range.
# arguments: no arguments
# return type: object or nil
# example:
a = %w( ant bat cat dog )
a.delete_at (2) #=> "cat"
a               #=> ["ant","bat","dog"]

# *******pop**********
# description: will take a hash and convert it to a nested array where each element is a key value pair
# arguments: none
# return type: array
# example:
a = [ "a", "b", "c", "d" ]
a.pop     #=> "d"
a.pop(2)  #=> ["b", "c"]
a         #=> ["a"]

# ----------------------Hash---------------------------
# to_a
# description:
# arguments: (integer amount)
# return type: object/s or nil
# example:
hash1 = {"c" => 40, "a" => 20, "b" => 10}.to_a #=> [["c", 40], ["a", 20], ["b", 10]]

# has_key?
# description: converts and object into an array
# arguments: (object key_req)
# return type: boolean
# example:

h = { "a" => 100, "b" => 200 }
h.has_key?("a")   #=> true
h.has_key?("z")   #=> false

# has_value
# description: returns true if given value is present for some key in hsh
# arguments: (object val_req)
# return type: boolean
# example:

h = { "a" => 100, "b" => 200 }
h.has_value?(100)   #=> true
h.has_value?(999)   #=> false

#----------------------Time-------------------------
#now
# description: returns the current date/time
# arguments: none
# return type: object time
# example:

puts = "#{time.now}"

#----------------------File-------------------------

#   * ```exist?```
#       Arguments: (string filename)
#       Return type: Boolean
#       Exmaple code of how to use method:
puts "********* .exist *********"
filereal = "./exercise.rb"
filefake = "./exercise2.rb"
puts "Does #{filereal} exist? #{File.exist?(filereal)}"
puts "Does #{filefake} exist? #{File.exist?(filefake)}"

#   * ```extname```
#       Arguments: (string filename)
#       Return type: string extension name
#       Exmaple code of how to use method:
puts "********* .extname *********"
puts "The extension of \".\/exercise.rb\" is #{File.extname("./exercise.rb")}"
