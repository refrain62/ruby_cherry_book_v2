fruits = ['apple', 'orange', 'melon']

# eachで繰り返しつつ、１から始まる添え字を取得する
fruits.each.width_index( 1 ) { |fruit, i| puts "#{i}: #{fuit}" }
#=> 1: apple
#   2: orange
#   3: melon

# mapで処理しつつ、10から始まる添え字を取得する
fruits.map.width_index( 10 ) { |fruits, i| "#{i}: #{fruit}" }
#=> ["10: apple", "11: orange", "12: melon"]
