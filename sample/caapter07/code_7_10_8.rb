# クラスメソッドを定義するコード例
class User
    def self.hello
        'Hello.'
    end
    
    class << self
        def hi
            'Hi!'
        end
    end
end

# 特異メソッドを定義するコード例
alice = 'I am alice.'

def alice.hello
    'Hello'
end

class << alice
    def hi
        'Hi!'
    end
end


class User
end

# クラス構文の外部でクラスメソッドを定義する方法１
def User.hello
    'Hello.'
end

# クラス構文の外部でクラスメソッドを定義する方法２
class << alice
    def hi
        'Hi!'
    end
end

User.hello  #=> "Hello."
User.hi     #=> "Hi!"
