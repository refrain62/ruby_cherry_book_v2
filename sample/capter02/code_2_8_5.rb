# 数字を文字列に変換する
123.to_s #=> "123"

# 配列の各要素を連結して1つの文字列にする
[ 10, 20, 30 ].join #=> "102030"

# *演算子を使って文字列を繰り返す
'Hi!' * 10 #=> "Hi!Hi!Hi!Hi!Hi!Hi!Hi!Hi!Hi!Hi!"

# String.new を使って新しい文字列を作る（あまり使わない）
String.new('hello') #=> 'hello'

# 以下は'abcd' と書いたのと同じ（めったに使わない）
'abc' 'def' #=> "abcdef"

# スペースがなくても可（こっちもめったに使わない）
'abc''def' #=> "abcdef"

# ダブルクォーテーションと\uを組み合わせてUnicodeのコードポイントから文字列を作成も可能
"\u3042\u3044\u3046" #=> "あいう"

puts "\u3042\u3044\u3046" #=> あいう

# NG 4桁でないのでエラー
puts "\u41" #=> invalid Unicode escape(SyntaxError)

# OK 0受けして4桁にする
puts "\u0041" #=> "A"

#OK もしくは\u{ }の形式を使う
puts "\u{41}" #=> A

