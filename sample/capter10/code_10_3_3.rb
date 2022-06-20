# ブロックではなく、1個のオブジェクトを引数として受け取る（&を付けない)
def greet(arrange_proc)
    puts 'おはよう'
    text = arrange_proc.call('こんにちは')
    puts text
    puts 'こんにちは'
end 

# Procオブジェクトを普通の引数としてgeetメソッドに渡す（＆を付けない）
repeat_proc = Proc.new { |text| text * 2 }
greet(repeat_proc)
#=> おはよう
#   こんにちはこんにちは
#   こんばんは


# 3種類のProcオブジェクトを受取、それぞれのあいさつ文字列に適用するgreetメソッド
def greet(proc_1, proc_2, proc_3)
    puts proc_1.call('おはよう')
    puts proc_2.call('こんにちは')
    puts proc_3.call('こんばんは')
end 

# greetメソッドに渡すProcオブジェクトを用意する
shuffle_proc = Proc.new { |text| text.chars.shuffle.join }
repeat_proc = Proc.new { |text| text * 2 }
question_proc = Proc.new { |text| "#{text}?" }

# 3種類のProcオブジェクトをgreetメソッドに渡す
greet( shuffle_proc, repeat_proc, question_proc )
#=> はおうよ
#   こんにちはこんにちは
#   こんはんば?

