sum = 0
# 処理を5回繰り返す。nには　0, 1, 2, 3, 4が入る
5.times { |n| sum + n }
sum #=> 10

sum = 0
# sumに1を加算する処理を5回繰り返す
5.times { sum += 1 }
sum #=> 5
