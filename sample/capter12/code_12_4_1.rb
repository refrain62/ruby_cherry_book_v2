# printデバッグ

def to_hex( r, g, b )
    [r, g, b].sum('#') do |n|
        # 変数（ブロックパラメータ）の中身をターミナルに出力する
        puts n 
        n.to_s(16).rjust(2, '0')
    end 
end 

def greet( country )
    # greetメソッドがよばれたことを確認
    puts 'greet start.'
    return 'countryをにゅうりょくしてください' if country.nil?

    if country == 'japan'
        # 真の分岐に入ったことを確認
        puts 'japan'
        'こんにちは'
    else
        # 偽の分岐に入ったことを確認
        puts 'other'
        'hello'
    end 
end


def calc_fare(ticket)
    from = STATIONS.index(ticket.stamped_at)
    to = STATIONS.index(@name)
    # to - from の結果をターミナルに出力しつつ、変数distanceに代入する
    distance = p to - from 
    FARES[distance - 1]
end 
