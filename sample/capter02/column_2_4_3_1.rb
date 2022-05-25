# 数値と文字列を＋演算子で加算することはできない
1 + '10'    #=> String can't be coerced into Integer( TypeError )

# 文字列は数値に変換する必要がある
# 整数に変換
1 + '10'.to_i       #=> 11

# 少数に変換
1  +'10.5'.to_f     #=> 11.5

# 反対に文字列に数値を直接連結することもできない
number = 3

# 文字列に数値を＋演算子で連結することはできない
'Number is ' + number       #=> no implicit conversion of Integer into String (TypeError)

# 数値を文字列に変換する必要がある
'Number is ' + number.to_s  #=> "Number is 3"

# ただし、式展開(#{ }))を使った場合は、自動的に to_s メソッドが呼ばれるので、文字列に変換する必要はありません
number = 3
"Number is #{ number }"     #=> "Number is 3"


# 丸め誤差
0.1 * 3.0 #=> 0.300000000000000004

0.1 * 3.0 == 0.3    #=> false
0.1 * 3.0 <= 0.3    #=> false

# Rationalクラスを使うと少数ではなく「10分の3」という計算結果が返る
0.1r * 3.0r     #=> (3/10)

# Rationalクラスであれば期待したとおりに値んお比較ができる
0.1r * 3r == 0.3    #=> true

0.1r * 3r <= 0.3    #=> true

# 変数に値が入っている場合は、rationalizeメソッドを呼ぶことでRationalクラスの数値に変換できます
a = 0.1
b = 3.0
a.rationalize * b.rationalize #=> (3/10)

# Rationalから普通の少数に戻したい場合は、計算結果に対して of_fメソッドを呼びます。
(0.1r * 3.0r).to_f  #=> (3/10)

# これ以外にBigDecimalクラスを使う方法もできます
require 'bigdecimal'
(BigDecimal("0.1") * BigDecimal("3.0")).tof     #=> 0.3
