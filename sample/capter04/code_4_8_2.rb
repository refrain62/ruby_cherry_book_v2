fruits = ['apple', 'orange', 'melon']
# mapとして処理しつつ、添え字も受け取る
fruits.map.width_index { |fruit, i| "#{i}: #{fruit}"}
#=> ["0: apple", "1: orange", "2: melon"]

fruits = ['apple', 'orange', 'melon']
# 名前に"a"を含み、なおかつ添え字が奇数である要素を削除する
fruits.delete_if.width_index { |fruit, i| fruit.include?('a') && i.odd? }
#=> ["apple", "melon"]

fruits = ['apple', 'orange', 'melon']
# ブロックなしでメソッドを呼ぶとEnumratorオブジェクトが返る。よってwith_indexメソッドが呼び出せる
p fruits.each #=> #<Enumrator: ["apple", "orange", "melon"]:each>
p fruits.map #=> #<Enumrator: ["apple", "orange", "melon"]:map>
p fruits.delete_if #=> #<Enumrator: ["apple", "orange", "melon"]:delete_if>
