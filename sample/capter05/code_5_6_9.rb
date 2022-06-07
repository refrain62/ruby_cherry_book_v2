h = {}
h[:foo] #=> nil


# キーが無ければ'hello'を返す
h = Hash.new('hello')
h[:foo] #=> "hello"

# ただし、デフォルト値の参照先は共通になるので破壊的変更を行うと予期せないことが起きる
h = Hash.new('hello')
a = h[:foo] #=> "hello"
b = h[:bar] #=> "hello"

# 変数 a と b は同一オブジェクト
a.equal?( b ) #=> true

# 変数 a に破壊的変更を行うと b も変わってしまう
a.upcase!
a #=> "HELLO"
b #=> "HELLO"

# ちなみにハッシュ自身は空のまま
h #=> {}



# キーワードが見つからないとブロックがその都度実行され、ブロックの戻り値がデフォルト値になる
h = Hash.new { 'hello' }

a = h[:foo] #=> "hello"
b = h[:bar] #=> "hello"

# 変数 a と b は異なるオブジェクト（ブロック実行時に別物として作成）
a.equal?( b ) #=> false

# 変数 a に破壊的変更を行うと b も変わってしまう
a.upcase!
a #=> "HELLO"
b #=> "hello"

# ちなみにハッシュ自身は空のまま
h #=> {}


# デフォルト値を返すだけでなく、ハッシュに指定されたキーとデフォルト値を同時に設定する
h = Hash.new { |hash, key| hash[ key ] = 'hello' }
h[ :foo ] #=> "hello"
h[ :bar ] #=> 'hello

# ハッシュにキーと値が追加されている
h #=> {:foo=>"hello", :bar="hello"}
