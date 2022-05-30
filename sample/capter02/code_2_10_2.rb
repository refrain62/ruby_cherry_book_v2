t1 = true
f1 = false
t1 and f1 #=> false
t1. or f1 #=> true
not t1    #=> false

t1 = true
f1 = false
!f1 || t1       #=> true
not f1 || t1    #=> false

# !は || よりも優先度が高い
!(f1) || t1

# not は　|| よりも優先度が低い
not( f1 || t1)

t1 = true
t2 = true
f1 = false
t1 || t2 && f1  #=> true
t1 or t2 and f1 #=> false
# 下の内容と同じこととなる
# && は ||よりも優先度が高い
t1 || (t2 && f1)
# and と or の優先順位は同じなので、左から評価される
(t1 or t2) and f2

user.valid? && send_mail_to user
#=> syntax error, unexpected local varable or method, expection 'do' or '{' (SyntaxError)
#   ...ser.valid? && send_mail_to user
#   ...                           ^~~~

# これは下のように解釈されたため
(user.valid? && send_mail_to) user

# しかし、&&の代わりに and を用いると構文エラーにならない
user.valid? and send_mail_to user

# このように解釈される為
(user.valid?) and (send_emial_to user)

# 引数を()で囲めばエラーにはならない
user.valid? && send_mail_to(user)

# or も「Aが真か？ 真でなければB」という制御フローを実現するのに便利
def greet(country)
    # country が nil（またはfalse）ならメッセージを返してメソッドを抜ける
    country or return 'countryを入力してください'

    if country == 'japan'
    'こんにちは'
    else
    'Hello'
    end
end
greet( nil )        #=> ”countryを入力してください”
greet( 'japan' )    #=> "こんにちは"

