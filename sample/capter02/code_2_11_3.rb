a = 'ruby'

# upcase だと変数aの値は変わらない
a.upcase    #=> "RUBY"
a           #=> "ruby"

# upcase! だと変数aの値も変化する
a.upcase!   #=> "RUBY"
a           #=> "RUBY"

# 引数の内容を変更しない安全バージョン
def reverse_upcase( s )
    s.reverse.upcase
end

# 引数の内容を破壊的に変更してしまう危険バージョン
def reverse_upcase!( s )
    s.reverse! 
    s.upcase! 
    s 
end

s = 'ruby'

# 安全バージョンは引数として渡した変数sのないようはそのまま
reverse_upcase( s )     #=> "YBUR"
s                       #=> "ruby"

# 危険バージョンは引数として渡した変数sの内容が変更される
reverse_upcase!( s )    #=> "YRUR"
s                       #=> "YRUR"

# ？で終る変数名を定義しようとすると構文エラー
odd? = 1.odd?
#=> syntax error, unexpected '='(SyntaxError)
#   odd? = 1.odd?
#        ^

# ！で終る変数名を定義しようとすると構文エラー
upcase! = 'ruby'.upcase!
#=> syntax error, unexpected '='(SyntaxError)
#   upcase! = 'ruby'.upcase!
#           ^

