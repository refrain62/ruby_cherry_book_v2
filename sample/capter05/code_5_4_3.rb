def buy_burger( menu, drink, potate )
    # ハンバーガーを購入
    if drink
        # ドリンクを購入
    end
    if potate
        # ポテトを購入
    end
end

# チーズバーガーとドリンクとポテトを購入する
buy_burger( 'cheese', true, true )

# フィッシュb－アガーとドリンクを購入する
buy_burger( 'fish', true, false )


# キーワード引数にしてみる
def buy_burger( menu, drink: true, potate: true )
    # ハンバーガーを購入
    if drink
        # ドリンクを購入
    end
    if potate
        # ポテトを購入
    end
end

# チーズバーガーとドリンクとポテトを購入する
buy_burger( 'cheese', drink: true, potate: true )

# フィッシュb－アガーとドリンクを購入する
buy_burger( 'fish', drink: true, potate: false )


# またデフォルト引数を設定しているので省略も可能（キーワードを指定する場合は順不同でもよい）
# チーズバーガーとドリンクとポテトを購入する
buy_burger( 'cheese' )

# フィッシュb－アガーとドリンクを購入する
buy_burger( 'fish', potate: false )


# ** を前につけるとハッシュをキーワード引数として渡すことも可能
params = { drink: true, potato: false }
buy_burger( 'fish', **params )


