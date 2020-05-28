#Pure Number Logic
# Sample Inpput
# 3
# 1
# 2
# 3

# Sample Output
# 44
# 55
# 4444

def pure_number(n)
  arr = []
  arr[0] = ""
  blocks = 0
  displacement = 0
  i = 1
  while(i <= n)
    blocks = blocks + 1 if(is_power_of_2?(i+1))
    if(is_4_series?(i, blocks))
      displacement = power_of_num(2, blocks-1)
      arr[i] = "4" + arr[i-displacement] + "4"
    else
      displacement = power_of_num(2, blocks) 
      arr[i] = "5" + arr[i-displacement] + "5"
    end
    i+=1
  end
  arr
end  
  
def is_power_of_2?(num)
  num.to_s(2).count('1')  == 1
end

def is_4_series?(n, digits)
  upper = (power_of_num(2, digits) + power_of_num(2, digits-1)) - 1
  puts "upper #{upper}"
  lower = power_of_num(2, digits) - 1
  puts "lower #{lower}"
  n >= lower && n < upper
end
  
def power_of_num(a, b)
  pow = 1
  for i in 1..b
    pow = pow*a
  end
  pow
end
  
n = gets.to_i
input_array = []
n.times do |i|
  n1 = gets.to_i
    input_array << n1
  end
  
output = pure_number(input_array.max)
  input_array.each do |i|
    puts output[i]
   end


        

