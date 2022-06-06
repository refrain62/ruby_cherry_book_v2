def to_hex( r, g, b )
    hex = '#'
    [ r, g, b ].each do |n|
        hex += n.to_s( 16 ).rjust( 2, '0' ) 
    end

    hex
end

def to_ints( hex )
    # 引数の文字列から3つの16進数を取り出す
    r, g, b = hex[ 1..2 ], hex[ 3..4 ], hex[ 5..6 ]
    [ r, g, b ].map do |s|
        s.hex
    end
end
