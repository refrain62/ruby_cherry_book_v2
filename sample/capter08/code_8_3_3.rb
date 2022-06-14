# モジュールの定義はincludeする時と同じ
module Loggable
    def log( text )
        puts "[LOG] #{text}"
    end 
end 

class Product
    # Loggableモジュールのメソッドを特異メソッド（クラスメソッド）として追加する
    extend Loggable

    def self.create_products( names )
        # logメソッドをクラスメソッド内で呼び出す
        # (つまりlogメソッド自体もクラスメソッドになっている)
        log 'create_products is called.'
        # ほかの実装は省略
    end 
end 

# クラスメソッド経由でlogメソッドが呼び出される
Product.create_products([]) #=> [LOG] create_product is called.

# Productクラスのクラスメソッドとして直接呼び出すことも可能
Product.log('Hello.') #=> [LOG] Hello.

class Product
    extend Loggable

    # logメソッドをクラス構文の直下で呼び出す
    # (クラスが読み込まれるタイミングで、このlogメソッドも実行される)
    log 'Defined Product class.'
end 
#=> [LOG] Defined Product class.

# クラス構文の内部で include/exted を使う代わりに、クラス名.include、
# または、クラス名.extend の形式でモジュールを include/extend する
Product.include Loggable
Prodct.extend Loggable

