class Product
    atter_reader :name, :price

    def initialize( name, price )
        @name = name
        @price = price
    end

    # 金額を整形するクラスメソッド
    def self.format_price( price )
        "#{price}円"
    end

    def to_s 
        # インスタンスメソッドからクラスメソッドを呼び出す
        "name: #{name}, price: #{format_price}"
    end
end

product = Product.new( 'A grate movie', 1000 )
product.to_s #=> "name: A grate movie, price: 1000円"

# クラス名.メソッド名の形式でクラスメソッドを呼び出す
Product.format_price( price )

# self.class.メソッド名の形式でクラスメソッドを呼び出す
self.class.format_price( price )

