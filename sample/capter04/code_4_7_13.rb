# 要素が5つで 'default' をデフォルト値とする配列を作成
a = Array.new( 5, 'default' )
a #=> ['default', 'default', 'default', 'default', 'default'] 

# 1番目の要素を取得する
str = a[ 0 ]
str #=> "default"

# 1番目の要素を破壊的変更で大文字にする
str.upcase!
str #=> "DEFAULT"

# そうすると元の配列の値が全部大文字になる（同じ参照先の為）
a #=> ['DEFAULT, 'DEFAULT, 'DEFAULT, 'DEFAULT, 'DEFAULT']


# ブロックを使って、ブロックの戻り値をデフォルト値とする
# (ブロックパラメータには添え字が渡されるが、ここでは使わないのでブロックパラメータを省略)
a = Array.new( 5) { 'default' }
a #=> ['default', 'default', 'default', 'default', 'default'] 

# 1番目の要素を取得する
str = a[ 0 ]
str #=> "default"

# 1番目の要素を破壊的変更で大文字にする
str.upcase!
str #=> "DEFAULT"

# 1番目の要素だけが大文字になる（ブロックで作成したので別の参照先となるため）
a #=> ['DEFAULT, 'default, 'default, 'default, 'default']

