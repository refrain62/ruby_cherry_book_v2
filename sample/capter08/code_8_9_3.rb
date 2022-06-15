module A 
    def to_s
        "<A> #{super}"
    end 
end 

class Product 
    # includeではなくprependを使う
    prepend A 

    def to_s 
        "<Product #{super}"
    end 
end 

product = Product.new 
product.to_s #=> "<A> <Product> #<Product:0x0000....>"

# prependではなくincludeでモジュールAをミックスインした場合
product.to_s #=> "#<Product> <A> #<Product:0x0000.....>"

Product.ancestors #=> [A, Product, Object, Kernel, BasicObject]

Product.ancestors #=> [Product, A, Object, Kernel, BasicObject]
