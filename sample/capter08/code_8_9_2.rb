module Greetable 
    def hello
        'hello.'
    end 
end 

module Aisatsu 
    # 別のモジュールをincludeする
    include Greetable

    def konnichiwa 
        'こんにちは。'
    end 
end 

class User 
    # Aisatsu モジュールだけを include する
    include Aisatsu
end 

user = User.new 

# Aisatsuモジュールのメソッドを呼び出す
user.konnnichiwa #=> "こんにちは。"

# Greeableモジュールのメソッドを呼び出す
user.hello      #=> "hello."

