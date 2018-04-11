# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  values = []
  keys = []
  
  name_hash.collect do |key, value|
    values << value
    keys << key
  end
  
  i = 0
  
  while i < values.length 
    if values[i] < values[i + 1]
       return keys[i]
    else 
      return keys[-1]
    end
    i += 1
  end
  
  answer
end