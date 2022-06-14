module Taggable
    def price_tag
        # priceメソッドはinclude先で定義されているはず、という前提
        "#{price}円"
    end 
end 

class Product
    include Taggable

    def price
        1000
    end 
end 

product = Prodct.new
product.price_tag #=> "1000円"

module Taggable
    def price_tag
        # あえてselfを付けて呼び出しても良い
        # self はinlucde先のクラス（たとえばProuctクラス)のインスタンスになる
        "#{self.price}円"
    end 
end 
