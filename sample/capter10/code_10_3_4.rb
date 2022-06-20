# Proc.new または procメソッドでProcオブジェクトを作成する
Proc.new { |a, b| a + b}
proc { |a, b| a + b }

# -> 構文または、lambdaメソッドでProcオブジェクトを作成する
->(a, b) { a + b }
lambda { |a, b| a + b }

-> a, b { a + b }

-> { 'Hello!' }

->(a, b) {
    a + b
}

->(a = 0, b = 0) { a + b }

# Proc.newの作成と実行
add_proc = Proc.new( |a, b| a + b )
add_proc.call( 10, 20 ) #=> 30

# ラムダの作成と実行
add_lambda = ->(a, b) { a + b }
add_lambda.call( 10, 20 ) #=> 30

# Proc.new の場合（引数がnilでもエラーが起きないようにto_iメソッドを使う）
add_proc = Proc.new { |a, b| a.to_i + b.to_i }
# Proc.newは引数が1つまたは3つでも呼び出しが可能
add_proc.call( 10 )             #=> 10
add_proc.call( 10, 20, 100 )    #=> 30

# ラムダの場合
add_lambda = ->(a, b) { a.to_i + b.to_i }
# ラムダは個数については厳密なので、引数が2個ちょうどでなければエラー
add_lambda.call( 10 )
#=> wrong number of arguments(given 1, expected 2)(ArgumentError)
add_lambda.call( 10, 20, 30 )
#=> wrong number of arguments(given 3, expected 2)(ArgumentError)
