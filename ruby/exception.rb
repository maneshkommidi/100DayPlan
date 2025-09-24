def divide_by_zero(numerator, denomentor)
  numerator/denomentor
rescue ZeroDivisionError => e
  puts "Can't divide by zero #{e.message}"
rescue StandardError => e
  puts "Something went wrong #{e.message}"
end