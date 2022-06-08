user = User.new
user.class #=> User

user = User.new

# userはUserクラスのインスタンスか？
user.instance_of?( User ) #=> true

# userは Stringクラスのインスタンスか？
user.instance_of?( String ) #=> false


user = User.new

# instance_of? は引数で指定したクラスそのもののインスタンスでないと true にならない
user.instance_of?( Object ) #=> false

# is_a? は　is-a 関係にあれば　true になる
user.is_a?( User )          #=> true
user.is_a?( Object )        #=> true
user.is_a?( BasicObject )    #=> true

# is-a 関係にない場合は　false
user.is_a?( String )        #=> false

