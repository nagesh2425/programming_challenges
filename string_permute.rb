# string permutations
  def permute(result,input)
  if(input.length == 0)
    return
  end

  if(input.length == 1)
    puts result + input[0]
    return
  end

  if(input.length == 2)
    puts result + input[0] + input[1]
    puts result + input[1] + input[0]
    return
  end

  (0...input.length).step(1).each do |i|
    firstpart = result+input[i]
    secondpart = (i > 0 ? input[0..(i-1)] : '') + (input[(i+1)..-1] || '')
    permute(firstpart,secondpart)
  end
end

permute('',gets.chomp)    
