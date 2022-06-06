fruts = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]
catch :done do
    fruits.shuffle.each do |fruit|
        numbers.shuffle.each do |n|
            puts "#{fruit}, #{n}"
            if fruit == 'orange' && n == 3
                # 全ての繰り返し処理を脱出する
                throw :done
            end
        end
    end
end
#=> melong, 2
#   melong, 1
#   melong, 3
#   orange, 1
#   orange, 3


fruts = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]
catch :done do
    fruits.shuffle.each do |fruit|
        numbers.shuffle.each do |n|
            puts "#{fruit}, #{n}"
            if fruit == 'orange' && n == 3
                # catch と一致しないタグをthrowする
                throw :foo
            end
        end
    end
end
#=> orange.1
#   orange, 3
#   uncaught throw :foo (UncaughtThrowError)

ret = 
    catch :done do
        throw :done
    end
# ret => nil

ret = 
    catch :done do
        thdow :done, 123
    end
end
ret #=> 123

