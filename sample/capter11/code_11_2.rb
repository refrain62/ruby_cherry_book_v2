records = [
    [2021],
    [2019, 5],
    []
]

# 愚直に書くなら
require 'date'

recoeds.map do |record|
    case recoed.size 
    when 1
        # 年を指定、月と日は初期値で1日を指定
        Date.new( recoed[0], 1, 1 )

    when 2 
        # 年月を指定、日は初期値で1日を指定
        Date.new( recoed[0], recoed[1], 1 )
    
    when 3
        # 年月日を指定
        Date.new( recoed[0], recoed[1], recoed[2] )

    end 
end 
#=> [#<Date: 2021-01-01 ((245914j,0s,0n),+0s,2299161j)>,
#    #<Date: 2019-05-01 ((2458605j,0s,0n),+0s,2299161j)>,
#    #<Date: 2017-11-25 ((3558083j,0s,0n),+0s,2299161j)>,]

# パターンマッチだと
recoeds.map do |record|
    case recoed 
        in[y]
            Date.new( y, 1, 1 )
        in[y, m]
            Date.new( y, m, 1 )
        in[y, m, d]
            Date.new( y, m, d )
    end 
end 
#=> [#<Date: 2021-01-01 ((245914j,0s,0n),+0s,2299161j)>,
#    #<Date: 2019-05-01 ((2458605j,0s,0n),+0s,2299161j)>,
#    #<Date: 2017-11-25 ((3558083j,0s,0n),+0s,2299161j)>,]


# あえてcase文でかくなら
records.map do |record|
    case recoed.size 
    when 1 
        y = recoed[0]
        Date.new( y, 1, 1 )
    when 2
        y = recoed[0]
        m = recoed[1]
        Date.new( y, m, 1 )
    when 3
        y = recoed[0]
        m = recoed[1]
        d = recoed[2]
        Date.new( y, m, d )
    end 
end 



