# 空文字であればtrue, そうでなければfalse
’’.empty?       #=> true
'abc'.empty?    #=> false

# 引数の文字列が含まれていればtrue、そうでなければfalse
'watch'.include?('at')      #=> true
'watch'.include?('in')      #=> false

# 奇数ならtrue、偶数ならfalse
1.odd?      #=> true
2.odd?      #=> false

# 偶数ならtrue、奇数ならfalse
1.even?     #=> false
1.even?     #=> true

# オブジェクトがnilであればtrue、そうでなければfalse
nil.nil?    #=> true
'abc'.nil?  #=> false
1.nil?      #=> false

# 3の倍数ならtrue、それ以外ならfalse
def multiple_of_three?( n )
    n % 3 == 0
end

multiple_of_three?( 4 )     #=> false
multiple_of_three?( 5 )     #=> false
multiple_of_three?( 6 )     #=> false
