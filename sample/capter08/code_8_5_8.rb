module Loggable
    def log( text )
        puts "[LOG] #{text}"
    end 
end 

# 文字列は通常logメソッドを持たない
s.log('Hello.') #=> undefined method 'log' for "abc#:String(NoMethodError)

# 文字列sにLoggableモジュールをextendして、得意メソッドを定義する
s.exted Loggable

# Loggableモジュールのlogメソッドが呼び出せるようになる
s.log('Hello.') #=> [LOG] Hello.


