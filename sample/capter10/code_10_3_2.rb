def greet( &block )
    puts 'おはよう'
    text = block.call('こんにちは')
    puts text 
    puts 'こんはんば'
end 


def greet(&block )
    # blockのクラス名を表示する
    puts block.class 

    puts 'おはよう'
    text = block.call('こんにちは')
    puts text 
    puts 'こんばんは'
end 

greet do |text|
    text * 2
end 
#=> Proc
#   おはよう
#   こんにちはこんにちは
#   こんばんは


def greet( &block )
    puts 'おはよう'
    text = block.call('こんにちは')
    puts text 
    puts 'こんはんば'
end 

# Procオブジェクトを作成し、それをブロックの代わりとしてgreetメソッドに渡す
repeat_proc = Proc.new { |text| text * 2 }
greet( &repeat_proc )
#=> おはよう
#   こんにちはこんにちは
#   こんばんは

# &なしで呼び出すと普通の引数を1つ渡したことになる
greet( repeat_proc ) #=> wrong number of arguments( given 1, expected 0)(ArgumentError)
