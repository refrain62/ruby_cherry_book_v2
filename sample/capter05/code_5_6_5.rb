def buy_burger( menu, drink: true, potato: true )
    # 省略
end

# キーワード引数として渡したいパラメータの定義
params = { dink: true, potate: false }

# ** 付きでハッシュを渡すと、キーワード引数として扱われる
buy_burger( 'fish', **params )

