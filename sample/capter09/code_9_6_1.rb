# 書きこみモードでファイルを開く
file = File.open('some.txt', 'w')

begin 
    # ファイルに文字を書き込む
    file << 'Hello'
# finalyみたいなもの
ensure 
    # 例外の有無にかかわらず必ずファイルをクローズする
    file.close 
end 


