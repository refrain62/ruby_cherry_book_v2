# CSV

require 'csv'

# CSVファイルへの出力
CSV.open('./lib/sample.csv', 'w') do |csv|
    # ヘッダ行を出力
    csv << ['Name', 'Email', 'Age']
    # 明細行を出力する
    csv << ['Alice', 'alice@example.com', 20]
end 

# タブ区切りのCSV(TSB)ファイルを読みこむ
CSV.foreach('./lib/sample.tsv', col_sep: "\t") do |row|
    # 各行について、1列目から3列目の値をターミナルに表示
    puts "1: #{row[0]}, 2:#{row[1]}, 3:#{row[2]}"
end 
