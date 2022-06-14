# Rubyは単一継承を採用
class Product
    def title
        log 'title is called.'
        'A great movie'
    end 

    private  

    def log( text )
        # 本来であれば標準ライブラリのLoggerクラスなどを使うべきだが、簡易的にPutsで代用
        puts "[LOG]#{text}"
    end
end

class User 
    def name
        log 'name is called.'
        'Alice'
    end

    private 

    # このメソッドの実装はProductクラスのlogメソッドと全く同じ
    def log( text )
        # 本来であれば標準ライブラリのLoggerクラスなどを使うべきだが、簡易的にPutsで代用
        puts "[LOG]#{text}"
    end
end

product = Product.new 
product.title 
#=> [LOG]title is calles.
#   "A great movie"

user = USer.new 
user.name 
#=> [LOG]name is called.
#   "Alice"



# logの処理が重複しているが、「製品はユーザーである」「ユーザは製品である」という関係（is-aの関係）が成り立たないので継承は避けるべき


# ログ用のメソッドを提供するモジュール
# 「ログ出力できる（log + able)」という意味でLoggableという名前
module Loggable 
    def log( text )
        puts "[LOG] #{text}"
    end
end

class Product
    # 上で作ったモジュールをinclude(mixinする)
    include Loggable 

    def title
        # logメソッドはLoggableモジュールで定義したメソッド
        log 'title is called.'
        'A great movie'
    end
end

class User 
    # こちらも同じようにincludeする(mixinする)
    include Loggable 
    
    def name 
        log 'name is called.'
        'Alice'
    end
end

product = Product.new 
product.title 
#=> [LOG]title is calles.
#   "A great movie"

user = USer.new 
user.name 
#=> [LOG]name is called.
#   "Alice"



# モジュールで定義するとpublicになる
Product.log 'public?' #=> [LOG]public?

# private にしたい場合
module Loggable
    # logメソッドはprivate メソッドにする
    private 

    def log( text )
        puts "[LOG] #{text}"
    end 
end 

