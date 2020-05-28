n = gets.to_i
arr = gets.to_s.rstrip.split("")
sock_groups = Hash.new
arr.each do |i|
  if !sock_groups.include?(i)
  	sock_groups[i] = 1
  else
    count =  sock_groups[i]
    sock_groups[i] = count + 1
  end
end

pairs = 0
sock_groups.values.each { |v| pairs += v /2 }   

puts pairs 
