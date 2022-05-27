# 引数がない場合は（）を付けないほうが主流
def greet
    'こんにちは'
end
# ( ) をつけてよいが、省略される事が多い
def greet()
    'こんにちは'
end


# () を省略できるが、引数がある場合はつけることが多い
def greet country
    if country == 'japan'
        'こんにちは'
    else
        'hello'
    end
end


