# a と b はどちらも同じ文字列だが、オブジェクトとしては別物
a = 'hello'
b = 'hello'
a.object_id #=> 70182231931400
b.object_id #=> 70182236321960

# c に代入する。bとcは同じオブジェクト
c = b
c.object_id #=> 70182236321960

# メソッドの日キスうにcを渡す。引数として受け取ったd はb、cと同じオブジェクトを参照している
def m( d )
    d.object_id
end

m( c )      #=> 70182236321960

# equals? メソッドを使って同じオブジェクトかどうか確認しても良い( true なら同じオブジェクト)
a.equals?( b )  #=> false
b.equals?( c )  #=> true

# b、c は同じオブジェクト、a は異なる
a = 'hello'
b = 'hello'
c = b

# 渡された文字列を破壊的に大文字に変換するメソッドを定義
def m!( d )
    d.upcase!
end

# c に m! メソッドを適用
m!( c )

# b , c はいずれも大文字になる
b   #=> "HELLO"
c   #=> "HELLO"

# a は別オブジェクトなので大文字にならない
a   #=> "hello"

