a = []
a.push( 1 )
# 2 と 3 を一度に追加
a.push( 2, 3 )
a #=> [1, 2, 3]

a = []
b = [2, 3]
a.push( 1 )
# 配列をpushする
a.push( b )
a #=> [1, [2, 3]]

a = []
b = [2, 3]
a.push( 1 )
# 配列を*付きで追加する
a.push( *b )
a #=> [1, 2, 3]

jp = ['japan', '日本']
country = '日本'
case country
# *により配列が展開され、 when 'japan', '日本' と書いたことと同じになる
when *jp
    'こんにちは'
end
#=> "こんにちは"

