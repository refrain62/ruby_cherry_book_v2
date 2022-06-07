# 国名に応じて通貨を返す（該当する通貨がなければnil）
def find_currency( country )
    currencies = {japan: 'yen', us: 'dollar', india: 'rupee'}
    currencies[ country ]
end

# 指定された国の通貨を大文字にして返す
def show_currency( coumtry )
    currency = find_currency( country )
    # nil でないことをチェック（nilだとupcaseが呼べないため)
    if currency
        currency.upcase 
    end
end

# 通貨が見つかる場合と見つからない場合の結果を確認
show_currency( :japan ) #=> "YEN"
show_currency( :brazil ) #=> nil

def show_currency( country )
    # 条件分岐内で直接変数に代入してしまう（値が取得できれば真、でなければ偽）
    if currency = find_currency( country )
        currency.upcase
    end
end

# nil 以外のオブジェクトであれば、 a.upcase と書いた場合と同じになる
a = 'foo'
a&.upcase #=> "FOO"

# nil であれば、nilを返す（a.upcaseと違ってエラーにならない）
a = nil
a&.upcase #=> nil

def show_currency( country )
    currency = find_currency( country )
    # nilの場合を考慮して &. 演算子でメソッドを呼び出す
    currency&.upcase
end

