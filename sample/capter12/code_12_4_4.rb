# デバッガ（debug.gem）を使う

# まずはインストール
$> gem install debug

# バージョンの確認
$> rdbg -v 
rdbg 1.2.2


# fizzbuzzのプログラムに導入してみる
def fizz_buzz(n)
    binding.break
    if n % 15 == 0
        'Fizz Buzz'
    elsif n % 3 == 0
        'Fizz'
    elsif n % 5 == 0
        'Buzz'
    else 
        n.to_s
    end
end 

# Ruby2.6か2.7の場合
gem 'debug'
require 'debug'

# ステップ実行
(rdbg) p n 
=> 1

# リターンキーをオスと前回のコマンド（ここではnext）を再実行する

# 任意の場所で変数を確認したい場合
(rdbg) p n % 3
#=> 1


# continue（省略はc）と入力すると、プログラムを再開し、もう一度bigining.breakメソッドが呼ばれた所で停止する。

# デバッグを終了する場合は「quit（省略型はq）」を入力します
(rdbg) quit 
Really quit?[Y/n] y


(rdbg) foo.to_s     #=> ruby
(rdbg) n            #=> next command

(rdbg) p n          #=> command
#=> 1

