text = '私の誕生日は1977年7月17日です。'

# =~演算子あどを使うと、マッチした結果をRegexp.last_matchで取得できる
text =~ /(\d+)年(\d+)月(\d+)日/

# MatchDataオブジェクトを取得する
Regexp.last_match   #=> #<MatchData "1977年7月17日", 1:"1977", 2:"7" 3:"17">

# マッチした部分全体を取得する
Regexp.last_match( 0 ) #=> "1977年7月17日"

# 1番目～3番目のキャプチャを取得
Regexp.last_match( 1 )  #=> "1977"
Regexp.last_match( 2 )  #=> "7"
Regexp.last_match( 3 )  #=> "17"

# 最後のキャプチャを取得
Regexp.last_match( -1 )  #=> "17"
