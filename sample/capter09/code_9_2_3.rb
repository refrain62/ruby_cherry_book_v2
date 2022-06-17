# method1にだけ例外処理を記述する
def method1 
    puts 'method_1 start.'
    begin
        method_2 
    rescue
        puts '例外が発生しました'
    end 
    puts 'method_1 end.'
end 

def method_2
    puts 'method_2 start.'
    method_3
    puts 'method_2 end.'
end 

def method_3 
    puts 'method_3 start.'
    # ZeroDivisionError(整数を0で除算しようとした場合に発生する例外)を発生させる
    1 / 0
    puts 'method_3 end.'
end 

# 例外を開始する
method_1 
# => method_1 start.
#    method_2 start.
#    method_3 start.
#    例外が発生しました
#    method_1 end.


# method_1 から例外処理を削除する
def method_1 
    puts 'method_1 start.'
    method_2 
    puts 'method_1 end.'
end 

# method_2, method_3は同じなので省略

# 処理を開始する
# => method_1 start.
#    method_2 start.
#    method_3 start.
#    divided by 0 (ZeroDicisionError)
