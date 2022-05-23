# 変数（ローカル変数）の宣言と代入
s = 'Hello'
n = 123 * 2

# 変数を宣言する目的で変数名だけ書くと、エラーになる
x #=> undefined local variable or method 'x' for main:Object(NameError)

# 変数を宣言するには何かしらの値を代入する必要がある
x = nil

# 変数名はスネークケースで書く
special_price = 200

# キャメルケースは使わない（エラーにはならないが一般的ではない）
specialPrice = 200

# アンダースコアで変数名を書き始める（あまり使われない）
_special_price = 200

# 変数名に数字を入れる
special_price_2 = 300

# 数字から始まる変数名は使えない（エラーになる）
2_special_price = 300
#=> trailing '_' in number(SyntaxError)
#  2_special_price = 300
#    ^

# 変数名を漢字にする（一般的ではない）
特別価格 = 200
特別価格 * 2        #=> 400

# 同じ変数に文字列や数値を代入する（良いコーではないので注意）
x = 'Hello'
x = 123
x = 'Good-bye'
x = 456

# 2つの値を同時に代入する
a, b = 1, 2
a       #=> 1
b       #=> 2

# 右辺の数が少ない場合は nil が入る
c, d = 10
c       #=> 10
d       #=> nil

# 右辺の数が多い場合は、はみ出した値が切り捨てられる
e, f = 100, 200, 300
e       #=> 100
f       #=> 200

# 互いに無関係な値を多重代入すると、理解しづらいコードになる
name, age, height = 'Alice', 20, 160

# こういう場合は別々に変数に代入するほうが良い
name = 'Alice'
age = 20
height = 160

# split メソッドで使って 人名をスペースで2分割するが、使うのはファーストネームだけ
# ラストネームは使わないので変数名をアンダースコア始まりにする
first_name, _last_name = 'Scott Tiger'.split(' ')
puts first_name         #=> Scott

# このバリエーションとして変数名をアンダースコア1文字にしてしまうケースもある（捨て用）
first_name, _ = 'Scott Tiger'.split(' ')
puts first_name         #=> Scott

# 2つの変数に同じ値を代入する
a = b = 100
a   #=> 100
b   #=> 100

# = を2回使って変数 aとbに同じ文字列を代入する
a = b = 'hello'
# aに格納された文字列を大文字にする
a.upcase!
# aだけを大文字にしたはずなのに、bも大文字に変わってしまった！
a       #=> "HELLO"
b       #=> "HELLO"

# 別々に代入した場合は、この問題は起きない
c = 'hello'
d = 'hello'
c.upcase!
c       #=> "HELLO"
d       #=> "hello"
