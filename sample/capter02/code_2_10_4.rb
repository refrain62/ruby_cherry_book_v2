# case文
country = 'italy'

# if文を使う場合
if country == 'japan'
    'こんにちは'
elsif country == 'us'
    'Hello'
elsif country == 'italy'
    'Ciao'
else 
    '???'
end
#=> "Ciao"

# case文を使う場合
case country 
    when 'japan'
        'こんにちは'

    when 'us'
        'Hello'

    when 'italy'
        'Cial'

    else
        '???'
end
#=> Ciao

// JavaScriptのswitch文、breakを書き忘れるとその次gのcase節も実行されています（フォールスルー）
const country = 'us'

switch( country )
{
    case 'japan':
        console.log('こんにちは')
        break

    case 'us':
        console.log('Hello')
        // フォールスルーさせるため、わざとコメントアウト
        break
    
    case 'italy':
        console.log('Ciao')
        break

    default:
        console.log('???')
}
// => Hello
// => Ciao

// Rubyのcase文は勝手に次のwhenの節の処理が実行されたりすることはない
case country
when 'japan'
    'こんにちは'
when 'us'
    'Hello'
when 'italy'
    'Ciao'
else
    '???'
end
#=> "Hello"

// When節に複数の値を指定する
country = 'アメリカ'
case country
when 'japan, '日本'
    'こんにちは'
when 'us', 'アメリカ'
    'Hello'
when 'italy', 'イタリア'
    'Ciao'
else
    '???'
end
#=> "Hello"

// case節を省略してwhen節の条件式を順に評価する
country = 'italy'

case
when country = 'japan'
    'こんにちは'
when country = 'us'
    'Hello'
when country = 'italy'
    'Ciao'
else
    '???'
end
#=>


// then も入れれる
country = 'italy'

case country
when 'japanese' then 'こんにちは'
when 'us' then 'Hello'
when 'italy' then 'Ciao'
end
#=> "Ciao"

# パターンマッチのコード例
case [ 0, 1, 2]
in [n, 1, 2]
    "n=#{n}"
else
    'not matched'
end
