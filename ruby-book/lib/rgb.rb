def to_hex( r, g, b )
    hex = '#'
    [ r, g, b ].each do |n|
        hex += n.to_s( 16 ).rjust( 2, '0' ) 
    end

    hex
end

def to_ints( hex )
    # 引数の文字列から3つの16進数を取り出す
    r = hex[ 1..2 ]
    g = hex[ 3..4 ]
    b = hex[ 5..6 ]
    # 3つの16進数を配列に入れ、ループを回しながら10進数の整数に変換した値を別の配列に詰め込む
    ints = []
    [ r, g, b ].each do |s|
        ints << s.hex
    end
    # 結果を返す
    ints
end
