class User
    atter_accessor :name

    def initialize( name )
        @name = name
    end

    def hello
        # self なしで name メソッドを呼ぶ
        "Hello, I am #{name}."
    end

    def hi
        # self付きで name メソッドを呼ぶ
        "Hi, I am #{self.name}."
    end

    def my_name
        # 直接インスタンス変数の @name にアクセスする
        "My name is #{@name}."
    end
end

user = User.new('Alice')
user.hello      #=> "Hello, I am Alice."
user.hi         #=> "Hi, I am Alice."
user.my_name    #=> "My name is Alice."
