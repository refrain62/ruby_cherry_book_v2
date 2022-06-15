module StringShuffle 
    # refinements が目的なので、refineメソッドを使う
    refine string do 
        def shuffle 
            chars.shuffle.join 
        end 
    end 
end 

# 通常はStringクラスにshuffleメソッドはない
'Alice'.shuffle #=> undefined method 'shuffle' for "Alice":String (NoMethodError)

class User 
    # refinements を有効化する
    using StringShuffle 

    def initialize( name )
        @name = name
    end 

    def shuffle_name 
        # Userクラスの内部であればStringクラスのshuffleメソッドが有効になる
        @name.shuffle 
    end 

    # Userクラスを抜けるとrefinementsは無効になる
end 

user = User.new('Alice')
# Userクラス内ではshuffleメソッドが有効になっている
user.shuffle_name #=> "cliAe"

# Userクラスを経由しない場合はshuffleメソッドは使えない
'Alice'.shuffle #=> undefined method 'shuffle' for "Alice":String(NoMethodError)


# StringShuffle芽生ジュールを読み込む
require_relative 'string_shuffle'

# ここではまだshuffleメソッドを使えない
# puts 'Alice'.shuffle #=> ecAli

class User 
    def initialize( name )
        @name = name
    end 

    def shuffled_name
        @name.shuffle 
    end 
end 

user = User.new('Alice')
puts user.shuffled_name #=> cilAe

puts 'Alice'.shuffle #=> liceA

# ほかのファイルではshuffleメソッドは使えない

module someModule
    refine String do 
        # Stringクラスに対する変更
    end 

    refine Enumerable do 
        # Enumerableメソッドに対する変更
    end 
end 
