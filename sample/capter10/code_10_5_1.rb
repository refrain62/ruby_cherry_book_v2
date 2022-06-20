add_proc = Proc.new { |a, b| a + b }

# callメソッドを使う
add_proc.call( 10, 20 ) #=> 30
# yeildメソッドを使う
add_proc.yield( 10, 20 )    #=> 30
# .()を使う
add_proc.(  10, 20 )    #=> 30
# []を使う
add_proc[10, 20]        #=> 30

add_proc === [10, 20]   #=> 30


def judge(age)
    # 20より大きければtrueを返すProcオブジェクト
    adult = Proc.new { |n| n > 20 }
    # 20より小さければtrueを返すProcオブジェクト
    child = Proc.new { |n| n < 20 }

    case age 
    when adult 
        '大人です'
    when child
        '子供です'
    else
        'はたちです'
    end 
end 

judge( 25 ) #=> "大人です"
judge( 18 ) #=> "子供です"
judge( 20 ) #=> "はたちです"
