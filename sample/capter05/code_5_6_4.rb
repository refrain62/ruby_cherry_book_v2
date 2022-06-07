# 想定外のキーワードはotherで受ける
def buy_burger( menu, drink: true, potato: true, **others )
    # othersはハッシュとして渡される
    puts others
end

buy_burger( 'fish', drink: true, potato: true, salad: true, chicken: false )
#=> {:salad=>true, :chicken=>false}
