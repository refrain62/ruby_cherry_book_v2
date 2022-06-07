# ハッシュ引数として受け取り、疑似キーワードを実現する
def buy_burger( menu, optoins = {} )
    drink = optoins[ :drink ]
    potato = optoins[ :potato ]
    # 省略
end

buy_burger( 'cheese', drink: true, potato: true )
