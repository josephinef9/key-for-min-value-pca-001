# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  lowest_key = nil # setting it equal to nil means that it is equal to nothing currently. kinda like = blank 
  lowest_value = nil
  name_hash.each do |key, value|
    if lowest_value == nil || value < lowest_value # if our lowest value is equal to nil(blank) OR if our value is less then our curent lowest value we want to keep it 
      lowest_value = value # here we are setting our lowest value equal to our value argument 
      lowest_key = key 
    end
  end 
  lowest_key
end 

# we want to return the key with the smalled value 
# we have key and value pairs 
# .each will iterate through each pair - we want it to collect the value part of the pair and save it. 
# so if we create a varible for lowest key and lowest value an dset them = nil - that means our varibles are empty?
# I know we should use an if statement 
# what i want it to do is iterate through, collect the first value and save it, on the next pass if the new value is lower then the previous it should save the new value as the lowest, etc 
# then return my lowest value 