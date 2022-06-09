class User
    # ここから下で定義されたメソッドはprivate
    private

    def hello

        'Hello'
    end
end

user = User.new
# private メソッドなのでクラスの外部からよびだせない
user.hello #=> private method 'hello' called for #<User:0x00000014311d9a8> (NoMethodError)


class User
    def hello
        # Ruby 2.6以前 = selfを付けるとエラー
        # Ruby 2.7以降 = selfを付け無くてもOK
        "Hello, I am #{self.name}."
    end
    
    private

    def name
        'Alice'
    end
end

user = User.new

# Ruby 2.6以前 = エラーになる
user.hello
#=> NoMethodError(private method 'name' called for #<User:0x0000012d8508a8>)

# Ruby 2.7以降 = エラーにならない
user.hello
#=> "Hello, I am Alice."
