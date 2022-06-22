# カレントディレクトリに"secret.txt”が存在するか？
File.exists?('./secret.txt')

# カレントディレクトリに”secret_folder"がそんざいするか？
Dir.exitst?('./secret_folder')

# libディレクトリにあるfizz_buzz.rbの行数をターミナルに表示
File.open('./lib/fizz_buzz.rb', 'r') do |f|
    puts f.readlines.count
end 

# libディレクトリにhello_world.txtを作成して文字を書き込む
File.open('./lib/hello_world.txt', 'w') do |f|
    f.puts 'Hello, world!'
end 


require 'fileutils'

# libディレクトリのhello_world.txtをhello_world.rbに移動（リネーム）すうｒ
FileUtils.mv('./lib/hello_world.txt', './lib/hello_world.rb')


require 'pathname'

# カレントディレクトリは以下にあるlibディレクトリを表すオブジェクトを作成する
lib = Pathname.new('./lib')

# ファイルか？
lib.file? #=> false 

# ディレクトリか？
lib.directory? #=> true

# libディレクトリ配下にあるsamle.txtへのパス文字列を作る
# (区切り文字のスラッシュは自動的に付与される)
lib.join('smaple.txt').to_s #=> "./lib/sample.txt"

