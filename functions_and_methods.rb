def compute_addition(num1:, num2:)
  return 0 if num1.nil? || num2.nil?

  num1 + num2
end

print 'Hi, lets do some addition'
puts 'Provide first number:'
num1 = gets.chomp

print 'Provide second number:'
num2 = gets.chomp

compute_addition(num1: num1, num2: num2)
