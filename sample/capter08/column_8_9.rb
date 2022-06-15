module Sample
    class User 
        NAME = 'Alice'

        def self.hello( name =  NAME )
            "Hello, I am #{name}."
        end 
    end 
end 

Sample::User::NAME #=> "Alice"
Sample::User.hello #=> "Hello, I am Alice."

Sample::User::hello #=> " Hello, I am Alice."

s = 'abc'
s::spcase #=> "ABC"

# Sample.UserだとUserがメソッドとみなされる
Sample.User::NAME #=> undefined method 'User' for Sample:Module(NoMethodError)

# User.NAME だとNAMEがメソッドとみなされる
Sample::User.NAME #=> undefined method 'NAME' for Sample::User:Class(NoMethodError)

# 二重コロン（::）は右辺がメソッドでも定数・クラスやモジュールでもOK
# ドット（.）は右辺がメソッドはOKだが、変数・クラスやモジュールはNG
