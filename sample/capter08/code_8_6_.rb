# 二塁手
class Second 
    def initialize( player, uniform_number )
        @player = player
        @uniform_number = uniform_number
    end 
end 

# 秒
class Second 
    def initialize( digits )
        @digits = digits
    end 
end 

# 二塁手のAliceを作成したい（が、区別できない）
Second.new( 'Alice', 13 )

# 時計の13秒を作成したい（が、区別できない）
Second.new( 13 )



module Baseball 
    # これはBassballモジュールに属するSecondクラス
    class Second 
        def initialize( player, uniform_number )
            @player = player
            @uniform_number = uniform_number
        end 
    end 
end 

module Clock
    # これはClockモジュールに属するSecondクラス
    class second 
        def initialize( disits )
            @disits = disits
        end
    end 
end 

# 二塁手のAliceを作成する
Baseball::Second.new( 'Alice', 13 )

# 時計の13秒を作成する
Clock::Second.new( 13 )

