# Rubyでは最後に発生した例外除法は組み込み変数の $! に格納されます。
# またバックトレース情報は $@ に格納されます。
begin
    1 / 0 
rescue => e 
    puts "#{e.class} #{e.message}"
    puts e.backtrace 
end 
#=> ZeroDivisionError divided by 0
#   (バックトレースは省略)

# 組み込み変数の $! と $@ に格納された情報を使う
begin
    1 / 0
rescue => e
    puts "#{$!.class} #{$!.message}"
    puts $@
end
#=> ZeroDivisionError divided by 0
#   (バックトレースは省略)

