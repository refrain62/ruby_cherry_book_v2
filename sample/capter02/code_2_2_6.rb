# 空白文字
(5+1                - 2)* 3
def 
            add     (a,b)



a+      b
            end
    add(            4, 5 )

# ---------------------------------------- 
# こう書くべき

(5 + 1 - 2) * 3 #=> 12
def add( a, b )
    a + b
end
add( 4, 5 )     #=> 9

# ----------------------------------------
# スペースを空けずに呼び出した場合は有効な構文
add(4, 5)       #=> 9

# スペースを空けて呼び出した場合は無効な構文（構文エラー）
add (4, 5)
#=> syntax error, undefined ',', expecting ')' (SyntaxError)
#   add (4, 5)
#         ^
