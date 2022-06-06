numbers = [1, 2, 3, 4]
sum = 0
# ブロックの外にあるsumとは別の変数sumを用意する
numbers.each do |n; sum|
    # 別のsumを10で初期化し、ブロックパラメータの値を加算する
    sum = 10
    sum += names
    # 加算した値をターミナルに表示する
    puts sum
end
#=> 11
#   12
#   13
#   14

# ブロックの中で使っていたsumは別物なので、ブロックの外のsumに変化はない
sum #=> 0
