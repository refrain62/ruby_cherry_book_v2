print 'Text?: '
text = gets.chomp
print 'Pattern?: '
pattern = gets.chomp

regexp = Regexp.new( pattern )
matches = text.scan( regexp )
if matches.size > 0
    puts "Mached: #{matches.join(', ')}"
else 
    puts 'Nothing matched.'
end 
