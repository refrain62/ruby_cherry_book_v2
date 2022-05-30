# unless文(if の反対の意味)
status = 'error'
if status != 'ok'
    '何か異常があります'
end
#=> "なにか異常があります"

status = 'error'
unless status == 'ok'
    '何か異常があります'
end
#=> "何か異常があります"

status = 'ok'
unless status == 'ok'
    '何か異常があります'
else
    '正常です'
end
#=> "正常です"

# elsifはない

status = 'error'
message = unless status == 'ok'
                '何あk異常があります'
            else
                '正常です'
            end

mesage  #=> "何か異常があります"

# unless を修飾子として使う
'何か異常があります' unless status == 'ok'
#=> "何か異常があります"

# thenも使える
status = 'error'
unless status == 'ok' then
    '何か異常があります'
end
#=> "何か異常があります"

status = 'error'
# unless を使わなくてもよい
if status != 'ok'
    '何か異常があります'
end
#=> "何か異常があります"

