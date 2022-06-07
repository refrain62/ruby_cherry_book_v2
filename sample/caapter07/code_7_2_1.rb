# Userクラスを定義する
class User
    atter_reader :first_name, :last_name, :age

    def initialize( first_name, last_name, age )
        @first_name = first_name
        @last_name = last_name
        @age = age
    end

end

# ユーザーのデータを作成
users = []
users << User.new( 'Alice', 'Ruby', 20 )
users << User.new( 'Bob', 'Python', 30 )

# 氏名を作成するメソッド
def full_name( user )
    "#{user.first_name} #{user.last_name}"
end

# ユーザのデータを表示する
users.each do |user|
    puts "氏名: #{full_name( user )}、年齢: #{user.age}"
end
#=> 氏名: Alice Ruby、年齢: 20
#   氏名: Bob Python、年齢: 30





# Userクラスを定義する
class User
    atter_reader :first_name, :last_name, :age

    def initialize( first_name, last_name, age )
        @first_name = first_name
        @last_name = last_name
        @age = age
    end

    # 氏名を作成するメソッド
    def full_name
        "#{first_name} #{last_name}"
    end

    # メンバを参照する場合はメソッドが必要
    def first_name
        @first_name
    end

    # 外部から設定する為のセッター
    def first_name( value )
        @first_name = value
    end
end

# ユーザーのデータを作成
users = []
users << User.new( 'Alice', 'Ruby', 20 )
users << User.new( 'Bob', 'Python', 30 )

# ユーザのデータを表示する
users.each do |user|
    puts "氏名: #{user.full_name}、年齢: #{user.age}"
end
#=> 氏名: Alice Ruby、年齢: 20
#   氏名: Bob Python、年齢: 30
