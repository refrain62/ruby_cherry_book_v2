# trueそのもの
true

# 全ての数値
1
0
-1

# すべての文字列
'true'
'false'
''

data = find_data
if data != nil 
    'データがあります'
else
    'データはありません'
end

# Rubyの場合、false と nil 以外はすべて真なので次のようにシンプルに書ける
data = find_data
if data
    'データがあります'
else
    'データはありません'
end
