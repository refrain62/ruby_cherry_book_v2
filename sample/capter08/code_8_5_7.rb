module NameChangeable
    def change_name
        # include先のクラスのインスタンス変数を変更する
        @name = 'ありす'
    end
end

class User 
    include NameChangeable

    attr_reader :name

    def initialize( name )
        @name = name 
    end 
end 

user = User.new('Alice')
user.name => 'Alice'

# モジュールで定義したメソッドでインスタンスを書き換える
user.change_name
user.name #=> "ありす"


module NameChangeable 
    def change_name 
        # センターメソッド経由でデータを変更する
        # （ミックス院先のクラスでセッターメソッドが未定義であれば、エラーが発生して実装上の問題に気付ける）
        self.name = 'ありす'
    end
end 

class User 
    include NameChangeable 

    # ゲッターメソッドとセッターメソッドを用意する
    attr_accessor :name 

    def initialize( name )
        @name = name 
    end 
end 

# Userクラスの使い方は先ほどと同じ
user = User.new('alice')
user.change_name
user.name #=> "ありす"

