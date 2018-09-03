# your code goes here
def begins_with_r(array)
  
  array.all? do |word|
    word[0] == "r"
    
  end
  
end

def contain_a(array)
  
  array.select do |word|
    word.include?("a")
  end
  
end

def first_wa(array) 
  
  array.find do |word| #.find, finds the first elemnt with "wa". while .find_all finds all of the elements with "wa"
    word[0..1] == "wa"
  end 
 
end

def remove_non_strings(array)
  
  array.delete_if do |element|
    
    element.class != String
    
  end
    
end

def count_elements(array)
  array.sort_by do |hash|
    hash[:name]
  end
end

  array_count = []
  count = 1;
  prev = array[0]
  
  for i in 1..(array.size-1)
    if(array[i] == prev)
        count += 1
    else
      array_count << prev.merge({:count => count})
      prev = array[i]
      count = 1
    end
  end
  array_count << prev.merge(:count => count)
  array_count
end