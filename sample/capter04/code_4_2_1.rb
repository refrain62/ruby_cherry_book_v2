# 差し替え
a = [1, 2, 3]
a[ 1 ] = 20
a #=> [ 1, 20, 3 ]

# 要素数より大きい数を指定すると 間の値が nil で埋められる
a = [ 1, 2, 3 ]
a[ 4 ] = 50
a #=> [ 1, 2, nil, 50 ]

# << を使うと最後に追加
a = []
a << 1
a << 2
a << 3
a #=> [ 1, 2, 3 ]

# 特定要素を削除したい場合は delete_at
a = [ 1, 2, 3 ]

a.delete_at( 1 ) #=> 2
a                #=> [ 1, 3 ]

# 存在しない引数をとると nil が返る
a.delete_at( 100 )      #=> nil
a                       #=> [ 1, 3 ]
