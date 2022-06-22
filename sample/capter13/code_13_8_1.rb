# Rake

# hello_world という名前のタスクを定義する
task :hello_world do 
    # ブロック野中がタスクとして実行される処理になる
    puts 'Hello, world!'
end 

$ rake hello_world 
Hello, world!


# タスクの説明を入れる
desc 'テスト用のタスクです'
task :hello_world do 
    puts 'Hello,world'
end 

$ rake -T 
rake hello_world # テスト用のタスクです

# 名前空間を使ってタスクをグループ分けする
namespace :my_task do 
    desc 'テスト用のタスクです。'
    task :hello_world do 
        puts 'Hello,world!'
    end 
end 

$ rake my_task::hello_world
Hello,world!