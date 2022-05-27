def add( a, b)
    # return も使えるが、使わないほうが主流
    return a + b
end
add( 1, 2 ) #=> 3

def greet( country )
    # こんにちは または hello がメソッドの戻り値になる
    if country == 'japan'
        'こんにちは'
    else
        'hello'
    end
end
greet('japan') #=> こんにちは
greet('us') #=> 'hello'


def greet(country)
    # country が　nil ならメッセージを返してメソッドを抜ける
    # (nil? はオブジェクトが nil の場合に true を返すメソッド)
    return 'countryを入力してください' if country.nil?
    if country == 'japan'
        'こんにちは'
    else
        'hello'
    end
end
greet( nil ) #=> "countryを入力してください"
greet( 'japan' ) #=> "こんにちは"

