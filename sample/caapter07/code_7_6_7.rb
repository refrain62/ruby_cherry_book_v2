class DVD < Product 
    # 省略

    def to_s
        # superでスーパークラスのto_sメソッドを呼び出す
        "#{super}, running_time: #{running_time}"
    end
end

dvd = DVD.new( 'An awesome film', 3000, 120 )
dvd.to_s #=> "name: An awesome film, price: 3000, running_time: 120"
