def currency_of( country )
    case country 
    when :japan 
        'yen'
    when :us 
        'dollar' 
    when :india 
        'rupee'
    else 
        # 意図的に例外を発生させる
        raise "無効な国名です。 #{country}"
    end 
end 

currency_of( :japan ) #=> "yen"
currency_of( :italy ) #=> 無効な国名です。italy(RunctimeError)


def currency_of( country )
    case country 
    when :japan 
        'yen'
    when :us 
        'dollar' 
    when :india 
        'rupee'
    else 
        # RuntimeErrorではなくArgumentErrorを発生させる
        raise ArgmentError, "無効な国名です。 #{country}"
    end 
end 

currency_of( :japan ) #=> "yen"
currency_of( :italy ) #=> 無効な国名です。italy(ArgumentError)


def currency_of( country )
    case country 
    when :japan 
        'yen'
    when :us 
        'dollar' 
    when :india 
        'rupee'
    else 
        # riseメソッドに例外クラスのインスタンスを渡す（newの引数はエラーメッセージになる）
        raise ArgumentError.new( "無効な国名です。 #{country}" )
    end 
end 

currency_of( :italy ) #=> 無効な国名です。italy(ArfumwnrError)
