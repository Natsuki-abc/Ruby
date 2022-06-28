require 'csv'

puts "1(新規でメモを作成) 2(既存のメモを編集する)"
memo_type = gets.to_s
input_number = memo_type.chomp

if input_number == "1"
    puts "拡張子を除いたファイル名を入力してください"
    file_name = gets.chomp

    p "メモしたい内容を記入してください"
    p "完了したらCtrl + D をおします"
    input = readlines
    
    CSV.open("#{file_name}.csv","w") do |csv|
    csv.puts [input]
    end

elsif input_number == "2"
    puts "既存のメモを編集します"
    puts "ファイル名を入力してください"
    file_name2 = gets.chomp

    p "追記したい内容を記入してください"
    p "完了したらCtrl + D をおします"
    input2 = readlines

    CSV.open("#{file_name2}.csv","a") do |csv|
    csv.puts [input2]
    end

else
    puts "１か２を入力してください"
end