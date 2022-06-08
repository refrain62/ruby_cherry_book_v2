class User
    attr_accessor :name

    def initialize
        @name = name
    end

    def rename_to_bob
        # selfなしで name= メソッドを呼ぶ（？）
        name = 'Bob'
    end

    def rename_to_carol
        # self付きで name= メソッドを呼ぶ
        self.name = 'Carol'
    end

    def rename_to_dave
        # 直接インスタンス変数を書き換える
        @name = 'Dave'
    end
end

user = User.new('Alice')

# Bobにリネーム。。。できていない！
user.rename_to_bob
user.name   #=> "Alice"

# Carolにリネーム
user.rename_to_carol
user.name   #=> "Carol"

# Daveにリネーム
user.rename_to_dave
user.name   #=> "Dave"

