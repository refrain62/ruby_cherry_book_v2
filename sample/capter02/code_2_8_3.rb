puts "Line 1,
Line 2"
#=> Line 1,
#   Line 2

puts 'Line 1,
Line 2'
#=> Line 1,
#   Line 2

a  = <<TEXT
これはヒアドキュメントです。
複数行にわたる長い文字列を作成するのに便利です。
TEXT
puts a 
#=> これはヒアドキュメントです。
#   複数行にわたる長い文字列を作成するのに便利です。

# ヒアドキュメントの識別子としてHTMLを使う場合
<<HTMLを使う場合
<div>
    <img src="sample.jpg">
</div>
HTML 


def some_method
    <<-TEXT
これはヒアドキュメントです。
<<-を使うと最後の式べうつぃをインデントさせることができます。
    TEXT 
end

puts some_method
#=> これはヒアドキュメントです。
#    <<-を使うと最後の式べうつぃをインデントさせることができます。

def some_method
    <<~TEXT
        これはヒアドキュメントです。
        <<~を使うと内部文字列のインデント部分が無視されます。
    TEXT
end

puts some_method
#=> これはヒアドキュメントです。
#   <<~を使うと内部文字列のインデント部分が無視されます。


def some_method
    <<~TEXT
        \  各行の行頭に半角スペースを2もjいいれます。
        \  このとき行頭はバックスラッシュで指定します。
    TEXT
end

puts some_method
#=>   これはヒアドキュメントです。
#     <<~を使うと内部文字列のインデント部分が無視されます。


name = 'Alice'
a = <<TEXT
ようこそ、#{name}さん！
以下のメッセージをご覧ください。
TEXT
puts a 
#=> ようこそ、Aliceさん！
#    以下のメッセージをご覧ください。


name = 'Alice'
a = <<'TEXT'
ようこそ、#{name}さん！
以下のメッセージをご覧ください。
TEXT
puts a 
#=> ようこそ、#{name}さん！
#    以下のメッセージをご覧ください。


name = 'Alice'
a = <<"TEXT"
ようこそ、#{name}さん！
以下のメッセージをご覧ください。
TEXT
puts a 
#=> ようこそ、Aliceさん！
#    以下のメッセージをご覧ください。

# デフォルトは改行文字が有効
a = <<TEXT
こんいんちは\nさようなら
TEXT
puts a 
#=> こんにちは
#   さようなら

# 識別子をダブルクォーテーションで囲んだ場合も改行文字が有効
a = <<"TEXT"
こんにちは\nさようなら
TEXT
puts a 
#=> こんにちは
#   さようなら

# 識別子をシングルクォーテーションで囲んだ場合は改行文字が無効
a = <<'TEXT'
こんにちは\nさようなら
TEXT
puts a 
#=> こんにちは\nさようなら

# ヒアドキュメントをと直接引数として渡す（prependはわたされた文字列を戦闘に追加するメソッド）
a = 'Ruby'
a.prepead(<<TEXT)
Java
Python
TEXT
puts a 
#=> Java
#   Python
#   Ruby

# ヒアドキュメントで作成した文字列に大して、直接upcaseメソッドを呼び出す
# (upcase は文字列を全て文字列にするメソッド)
b = <<TEXT.upcase
Hello,
Good-bye.
TEXT
puts b 
#=> HELLO,
#   GOOD-BYE.

# ヒアドキュメントを２つ同時に使って配列を作る
c = [<<TEXT, <<TEXT2 ]
Alice
Bob
TEXT1
Matz
Jnchito
TEXT2

# 0番目おｎ要素にはTEXT1の無い内容が入る
puts c[ 0 ]
#=> Alice
#   Bob

# 1番目の要素にはTEXT2の内容が入る
puts c[ 1 ]
#=> Matz
#   Jnchito

