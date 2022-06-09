class Product 
    DEFAULT_PRICE = 0
    # 再代入して定数の値を書き換える
    DEFAULT_PRICE = 100
end
#=> warning: already initialized constant Product::DEFAULT_PRICE

# 再代入後の値を変える
Prodct::DEFAULT_PRICE #=> 1000

# クラスの外部からでも再代入が可能
Prodct::DEFAULT_PRICE = 3000
#=> warning: already initialized constant Product::DEFAULT_PRICE

Product::DEFAULT_PRICE #=> 3000


# クラスを凍結する
Product.freeze

# freezeすると変更できなくなる
Product::DEFAULT_PRICE = 5000 #=> can't modify frozen #<Class:Product>:Product(FrozenError)

