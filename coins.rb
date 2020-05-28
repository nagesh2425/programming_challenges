#coins program
def change(amt)
  coins = [1,2, 3, 4,5]
  result = 0
  coins.sort.reverse.each do |coin|
    result +=  amt / coin
    amt = amt % coin
  end
  result
end
puts change(20)
