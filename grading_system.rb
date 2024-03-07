GRADES = {
  A: 'Exceptional',
  B: 'Well done',
  C: 'Average',
  D: 'Do better',
  E: 'Failed',
  F: 'Absolute disgrace'
}

puts 'Hi there, welcome to the grading system'
print 'What was your grade back in school?: '

user_grade = gets.chomp

grade = user_grade.to_f

if grade <= 80
  puts GRADES[:B]
elsif grade <= 70
  puts GRADES[:C]
elsif grade <= 60
  puts GRADES[:D]
elsif grade <= 50
  puts GRADES[:E]
else
  puts 'No grade matches this in our system'
end
