def greet 
    puts 'おはよう'
    puts 'こんばんは'
end 

greet
#=> おはよう
#   こんばんは

# ブロック付きでgreetメソッドを呼び出す
greet do 
    puts 'こんにちは'
end 
#=> おはよう
#   こんばんは

def greet 
    puts 'おはよう'
    # ここでブロックの処理を呼び出す
    yield
    puts 'こんばんは'
end 

greet do 
    puts 'こんにちは'
end 
#=> おはよう
#   こんにちは
#   こんばんは



# 複数書いたら複数呼び出される

def greet 
    puts 'おはよう'
    # ブロックを２回呼び出す
    yield
    yield
    puts 'こんばんは'
end 

greet do 
    puts 'こんにちは'
end 
#=> おはよう
#   こんにちは
#   こんにちは
#   こんばんは

# わざとブロックを付けずに呼び出す
greet 
#=> おはよう
#   not block given (yield)(LocalJumpError)


def greet 
    puts 'おはよう'
    # ブロックの有無を確認してからyieldを呼び出す
    if block_given?
        yield 
    end 
    puts 'こんばんは'
end

greet 
#=> おはよう
#   こんばんは

greet do 
    puts 'こんにちは'
end 
#=> おはよう
#   こんにちは
#   こんばんは


def greet 
    puts 'おはよう'
    # ブロックに引数を渡し、戻り値を受け取る
    text = yield 'こんにちは'
    # ブロックの戻り値をターミナルに出力する
    puts text 
    puts 'こんはんは'
end 

greet do |text|
    # yield で渡された文字列（"こんにちは"）を２回繰り返す
    text * 2
end 
#=> おはよう
#   こんにちはこんにちは
#   こんばんは


def greet 
    puts 'おはよう'
    # ２個の引数をブロックに渡す
    text = yield 'こんにちは', 12345
    puts text 
    puts 'こんばんは'
end 

greet do |text|
    # ブロックパラメータが１つであれば、２つ目の引数は無視される
    text * 2
end 
#=> おはよう
#   こんにちはこんにちは
#   こんばんは

def greet 
    puts 'おはよう'
    # 1個の引数をブロックに渡す
    text = yield 'こんにちは'
    puts text 
    puts 'こんばんは'
end 

greeto do |text, other|
    # ブロックパラメータが２つであれば、２つ目の引数はnilになる
    text * 2 + other.inspect 
end 
#=> おはよう
#   こんにちはこんにちは
#   こんばんは
