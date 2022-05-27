# %q! !はシングルクォーテーションで囲んだことと同じになる
puts %q!He said, "Don't speak."! #=> He said, "Don't speak."

# %Q! !ダブルクォーテーションで囲んだことと同じになる（改行文字や式展開が使える）
something = "Hello."
puts %Q!He said, "#{samething}"! #=> He said, "Hello."

# %! !もダブルクォーテーションで囲んだことと同じになる
something = "Bye."
puts %q! said, "#{something}"! #=> He said, "Byte."


puts 'He said, "Don\'t speak."' #=> He said, "Don't speak."

something = "Hello."
puts "He said, \"#{sometihng}\"" #=> He said, "Hello"

something = "Bye."
puts "He said,\"#{sometihng}\"" #=> He said, "Bye."

# ?を区切り文字として使う
puts %q?He said, "Don't speak."? #=> He said, "don't speark."

# {} を区切り文字として使う
puts %1{He said, "Don't speak."}

