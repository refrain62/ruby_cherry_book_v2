class User
    def hello
        'Hello!'
    end

    # helloメソッドのエリアイアスメソッドとして greetを定義する
    alias greet hello
end

user = User.new
user.hello #=> "Hello!"
user.greet #=> "Hello!"

