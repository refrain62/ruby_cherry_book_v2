def to_hex( r, g, b )
    hex = '#'
    [ r, g, b ].each do |n|
        hex += n.to_s( 16 ).rjust( 2, '0' ) 
    end

    hex
end

def to_ints( hex )
    # 引数の文字列から3つの16進数を取り出す
    r, g, b = hex.scan(/\w\w/)
    [ r, g, b ].map do |s|
        s.hex
    end
end
