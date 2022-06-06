def greet( *names )
    "#{names.join('と')}、こんにちは!"
end
greet('田中さん')                         #=> "田中さん、こんにちは！"
greet('田中さん', '鈴木さん')              #=>  "田中さんと鈴木さん、こんにちは！"
greet('田中さん', '鈴木さん', '佐藤さん')   #=>  "田中さんと鈴木さんと佐藤さん、こんにちは！"

# 多重代入の例の左辺と同じように引数を設定する
def foo( a, *b, c, d )
    puts "a=#{a}, b=#{b}, c=#{c}, d=#{d}"
end

# 多重代入の例の右辺と同じ形の引数でメソッドを実行
# すると、多重代入の時と同じように引数が渡される
foo( 1, 2, 3, 4, 5 )
#=> a=1, b=[2, 3], c=4, d=5