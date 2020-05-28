#Number of consecutive 1's in a binary number
n = 13
binary_number = n.to_s(2)
array = binary_number.split("")
max = 0
count = 0
 for i in array
   if i.to_i != 0 
     count += 1
    else 
      if count > max
        max = count
      end
      count = 0
    end
  end

puts  max
