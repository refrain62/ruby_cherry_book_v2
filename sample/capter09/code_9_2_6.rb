begin
    # 例外が置きそうな処理
rescue Exception
    # Exceptionとそのサブクラスが捕捉される
end


begin
    # 例外が置きそうな処理
rescue Exception 
    # Exceptionとそのサブクラスが捕捉される。つまりNoMemoryErrorやSystemExitまで捕捉される
end

