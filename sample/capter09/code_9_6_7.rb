def fizz_buzz( n )
    begin 
        if n % 15 == 0
            'Fizz Buzz'
        elsif n % 3 == 0
            'Fizz'
        elsif n % 5 == 0
            'Buzz'
        else 
            n.to_s
        end 
    rescue => e
        puts "#{e.class} #{e.message}"
    end 
end 

fizz_buzz( nil ) #=> NoMethorError undefined method '%' for nil:NilClass


def fizz_buzz( n )
    if n % 15 == 0
        'Fizz Buzz'
    elsif n % 3 == 0
        'Fizz'
    elsif n % 5 == 0
        'Buzz'
    else 
        n.to_s
    end 
rescue => e
    puts "#{e.class} #{e.message}"
end 

fizz_buzz( nil ) #=> NoMethorError undefined method '%' for nil:NilClass


# 元のコード（begin / end を省略しない）
users.each do |user|
    begin
        send_mail_to( user )
    rescue => e
        puts e.full_message
    end
end 

# begin / end を省略したコード
users.each do |user|
    send_mail_to( user )
rescue e 
    puts e.full_message
end 


# ブロックを｛｝で書いた場合は例外書林おbegin とend を省略できない(構文エラー)
users.each { |user|
    send_mail_to( user )
rescue e 
    puts e.full_message
}
#=> syntax error, unexpected 'rescue', expecting '}'(SyntaxError)

# この場合はbeginとendを省略せずに書く必要がある
users.each { |user|
    begin
        send_mail_to( user )
    rescue => e
        puts e.full_message
    end
}
