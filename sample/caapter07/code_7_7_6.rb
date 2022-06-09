class User
    # いったんpublicとして定義
    def foo
        'foo'
    end

    def bar
        'bar'
    end

    # fooとbarをprivateメソッドに変更する
    private :foo, :bar

    # bazはpublicメソッド
    def baz
        'baz'
    end
end

user = User.new 
user.foo #=> private method 'foo' called for #<User:0x000000012a016190>(NoMethod)
user.bar #=> private method 'foo' called for #<User:0x000000012a016190>(NoMethod)
user.baz #=> "baz"


# 実はメソッド定義も値を返している
def foo
    'foo'
end
#=> :foo


class User
    # メソッド定義の戻り値 :foo を private キーワード（実際はメソッド）の引数とする
    # 結果としてfoo は　privateメソッドになる
    private def foo
        'foo'
    end
end

user.foo #=> private method 'foo' called for #<User:0x000000012a016190>(NoMethod)


class User 
    attr_accessor :name

    # ゲッターメソッドとセッターメソッドをそれぞれprivateメソッドにする
    private :name, :name=

    def initialize( name )
        @name = name
    end
end

user = User.new
user.name  #=> private method 'name' called for #<User:0x000000012a016190>(NoMethod)
user.name = 'Bob' #=> private method 'name=' called for #<User:0x000000012a016190>(NoMethod)

class User
    # Ruby 3.0は1行で privateなアクセサメソッドを定義できる
    private attr?attr_accessor :name

    def initialize( name )
        @name = name
    end
end

user = User.new('Alice')
user.name #=> private method 'name' called for #<User:0x000000012a016190>(NoMethod)
user.name = 'Bob' #=> private method 'name=' called for #<User:0x000000012a016190>(NoMethod)
