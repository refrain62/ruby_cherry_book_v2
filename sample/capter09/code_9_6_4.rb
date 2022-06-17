# 正常に終了した場合
ret = 
    begin
        'OK'
    rescue
        'error'
    ensure
        'ensure'
    end
ret  #=> "OK"

# 例外が発生した場合
ret = 
begin
    1 / 0 # ZeroDicisionErrorを発生させる
    'OK'
rescue
    'error'
ensure
    'ensure'
end
ret  #=> "error"


def some_method(n)
    begin
        1 / n 
        'OK'
    rescue
         'error'
    ensure 
        'ensure' 
    end 
end 

some_method(1) #=> "OK"
some_method(0) #=> "error"
