combination = -> (n) do
    -> (v) do
    (n-v+1..n).inject(:*) / (1..v).inject(:*)
end
end

n = gets.to_i
r = gets.to_i
nCr = combination.(n)
puts nCr.(r)