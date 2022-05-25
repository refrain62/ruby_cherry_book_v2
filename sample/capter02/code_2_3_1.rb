'これは文字列です。'
"これも文字列です。"

# ダブルクォーテーションで囲むと \n が改行文字として機能する
puts "こんにちは\nさようなら"
#=> こんにちは
#   さようなら

# シングルクォーテーションで囲むと \n はただの文字列になる
put 'こんにちは\nさようなら'
#=> こんにちは\nさようなら

# 式展開を使う場合
name = 'Alice'
puts "Hello, #{name}!" #=> Hello, Alice

i = 10
puts "#{i}は16進数にすると#{i.tos(16)}です" #=> 10は16進数にするとaです

name = 'Alice'
puts 'Hello, #{name}!' #=> Hello, #{name}!

name = 'Alice'
puts 'Hello, ' + name + '!' #=> Hello, Alice

puts "こんにちは\\nさようなら" #=> こんにちは\nさようなら

name = Alice
puts "Hello, \#{name}!" #=> Hello, ${name}

puts 'He said, "Don\'t speak."' #=> He said, "Don't speak."
puts "He said, \"Don't speak.\"" #=> He said, "Don't speak."
