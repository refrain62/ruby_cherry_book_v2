class User
    private 

    # クラスメソッドもprivateメソッドになる？
    def self.hello
        'Hello!'
    end
end

# クラスメソッドはprivateメソッドにならない！
User.hello #=> "Hello!"


class User
    class << self
        # class << self の構文ならクラスメソッドでもprivateが機能する
        private 

        def hello
            'Hello!'
        end
    end
end

User.hello #=> private method 'hello' called for User:Class(NoMethodError)

