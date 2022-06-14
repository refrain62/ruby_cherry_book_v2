# helloメソッドを持つGreetableモジュールを定義
module Greetable 
    def hello 
        'hello'
    end
end

# モジュールのインスタンスは作成できない
greetable = Greetable.new #=> undefined method 'new' for Greetable:Module(NoMethodError)

# ほかのモジュールを継承して新しいモジュールを作ることはできない
module AwesomeGreetable < Greetable
end
#=> syntax error, unexpected '<'(SyntaxError)
