# メソッドの定義

def greet( country )
    if country == 'japan'
        'こんにちは'
    else
        'Hello'
    end
end

# 引数がない
greet
#=> worng number of arguments ( given 0, expected 1 )(ArgumentError)

# 引数がちょうど
greet( 'us' ) #=> "Hello"

# 引数が多い
greet( 'us', 'japan' )
#=> worng number of arguments ( given 2, expected 1 )(ArgumentError)


# 引数なしの場合は country に 'japana' を設定
def greet( country = 'japan' )
    if country == 'japan'
        'こんにちは'
    else
        'Hello'
    end
end

greet( ) #=> "こんにちは"
greet( 'us' ) #=> "Hello"


# 混在可能
def default_args( a, b, c = 0, d = 0 )
    "a=#{a}, b=#{b}, c=#{c}, d=#{d}"
end

default_args( 1, 2 )        #=> "a=1, b=2, c=0, d=0"
default_args( 1, 2, 3 )     #=> "a=1, b=2, c=3, d=0"
default_args( 1, 2, 3, 4 )  #=> "a=1, b=2, c=3, d=4"

# システム日時やほかのメソッドの戻り値をデフォルト値に指定する
def foo( time = Time.now, message =bar )
    puts "time: #{time}, message: #{message}"
end

def bar
    'BAR'
end

foo #=> time: 2021-05-10 09:16:35 + 0900, message: BAR


# yが指定されなければxの値をyに設定する
def point ( x, y = x )
    puts "x=#{x}, y=#{y}"
end

point( 3 )      #=> x=3, y=3
point( 3, 10 )  #=> x=3, y=10

