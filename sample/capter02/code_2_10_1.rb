1 && 2 && 3         #=> 3
1 && nil && 3       #=> nil
1 && false && 3     #=> false

nil || false        #=> false
false || nil        #=> nil
nil || false || 2 || 3 #=> 2


# Alice, Bob, Carol と順に検索し、最初に見つかったユーザ(nil または　false 以外の値)を変数に格納
user = find_user('Alice') || find_user('Bob') || find_user('Carol')

# 正常なユーザであればメールを送信する（左辺が偽であればメール送信は実行されない）
user.valid? && send_emial_to( User )

