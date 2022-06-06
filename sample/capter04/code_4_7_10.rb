# []で文字列の配列を作成
['apple', 'melon', 'orange'] #=> ["apple", "melon", "orange"]

# %wで文字列の配列を作成する（!で囲む）
%w!apple melon orange!  #=> ["apple", "melon", "orange"]

# %wで文字列の配列を作成する（丸カッコで囲む）
%w(apple melon orange) #=>  ["apple", "melon", "orange"]

# 空白文字（スペースや改行）が連続した場合も1つの区切り文字とみなされる
%w(
    apple
    melon
    orange
)
#=>  ["apple", "melon", "orange"]

# 値にスペースを含めたい場合は バックスラッシュでエスケープ
%w(big\ apple small\ melon orange) #=>  ["big apple", "small melon", "orange"]

# 式展開や改行文字、タブ文字を含めたい場合は%W（大文字のW）を使う
prefix = 'Thi is'
%W( #{prefix}\ an\ apple small\nmelong orange )
#=>  ["This is an apple", "small\nmelon", "orange"]
