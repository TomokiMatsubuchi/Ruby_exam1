
def form
  while true
    puts "1から5の数字で評価を入力してください。"
    point = gets.to_i
    if point == 1..5
      puts "コメントを入力してください"
      comment = gets.chomp
      post = "ポイント: #{point} コメント: #{comment}"
      File.open("data.txt", "a") do | file|
          file.puts(post)
      end
      break
    else
      puts "1から5で入力してください"
    end
  end
end

def read
  puts "これまでの結果"
  File.open("data.txt", "r") do |file|
    file.each_line do |line|
      puts line
    end
  end
end

while true
  puts "実施したい処理を選択してください"
  puts "1: 評価ポイントとコメントを入力する"
  puts "2: 今までの結果を確認する"
  puts "3: 終了する"
  num = gets.to_i
  case num
  when 1
    form()
  when 2
    read()
  when 3
    puts "終了します"
    break
  else
    puts "1から3の数字で選択してください"
  end
end
