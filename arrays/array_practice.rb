#!/usr/bin/env ruby

i = 0
array_variable = []
while i < 10
  if i == 9
    array_variable[i] = 10
    i += 1
  else
    array_variable[i] = i + 1
    i += 1
  end
end

puts "#{array_variable.join('...')}... "
puts "T-#{array_variable.reverse.join(', ')}...  BLASTOFF!"
puts "The last element is #{array_variable.last}"
puts "The first element is #{array_variable.first}"
puts "The third element is #{array_variable[2]}"
puts 'The element with an index of '\
"#{array_variable[2]} is #{array_variable[3]}"
puts "The second from last element is #{array_variable[-2]} "
puts "The first four elements are '#{array_variable[0..3].join(', ')}'"

puts 'If we delete 5, 6 and 7 from the array, we\'re left '\
"with [#{array_variable.delete_if { |j| j > 4 && j < 8 }.join(',')}] "
puts 'If we add 5 at the beginning of the array, we\'re left '\
"with [#{array_variable.insert(0, 5).join(',')}] "
puts "If we add 6 at the end of the array, we're left "\
"with [#{array_variable.push(6).join(',')}] "
puts 'Only the elements '\
"#{array_variable.delete_if { |variable| variable < 9 }} are > 8. "
puts 'If we remove all the elements, then the length '\
"of the array is #{array_variable.drop(9).length}  "
