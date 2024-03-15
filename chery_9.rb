def method1 
  puts "メソッド1を実行します"

  begin
    method2
  rescue 
    puts "例外が発生しました！"
  end
  
  puts "メソッド1を実行が終わりました"
end

def method2
  puts "メソッド2を実行します"
  method3
  puts "メソッド2を実行が終わりました"
end

def method3
  puts "メソッド3を実行します"

  # ZerroDivisionErrorを発生させる
  1 / 0

  puts "メソッド3を実行が終わりました"
end

method1

puts "--------------------------------"

begin
  1 / 0
rescue => e
  puts "エラークラス => #{e.class}"
  puts "エラーメッセージ => #{e.message}"

  puts "フルエラーメッセージ --------------"
  puts e.full_message
  puts "--------------------------"

  puts "バックトレース -------------"
  puts e.backtrace
  puts "--------------------------"
end


puts "--------------------------------"

begin
  "abc".foo
rescue NoMethodError => e
  puts "NoMethodErrorの例外処理が実行されました"
  puts e.class
  puts e.message
rescue NameError => e
  puts "NameErrorの例外処理が実行されました"
  puts e.class
  puts e.message
end

puts "--------------------------------"

retry_count = 0
begin
  1 / 0
rescue 
  retry_count += 1
  if retry_count <= 3
    puts "retryします。 #{retry_count}回目"
    retry
  else
    puts "retry上限に達しました。"
  end
end

puts "--------------------------------"

def currency_of(country)
  case country
  when :japan
    puts "円です"
  when :us
    puts "ドルです"
  when :korea
    puts "ウォンです"
  else
    raise
  end
end

currency_of(:japan)
currency_of(:itary)
