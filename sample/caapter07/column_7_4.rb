class User
    # 省略

    def icon_url
        twitter_data[ :icon ]
    end

    def location
        twitter_data[ :location ]
    end

    def twitter_data
        # インスタンス変数と ||= を使ったメモ化（データ保存）
        @twitter_data ||= begin        
            # Twitter API からデータを取得して変数dataに代入する処理を書く
            # 
            #
        end
    end
end


# 遅延初期化を使わない場合
class Foo 
    atter_reader :bar

    # この場合、Foo.new するだけで時間がかかってしまう
    def initialize 
        @bar = # 何か重い処理で @bar を初期化 ...
    end
end

# 遅延初期化を使う場合
class Foo 
    # initializeでは何もしないため、Foo.new が即座に終わる
    # def initialize
    # end

    # 遅延初期化のテクニックを使って bar の値を返す
    def bar
        @bar ||= # 何か重たい処理で @bar を初期化...
    end
end
