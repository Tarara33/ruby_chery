def dice(&block)

  if block_given?
    yield
  else
    puts [1,2,3,4,5,6].sample
  end
end

dice

dice do 
  puts [7,8,9,10,11,12].sample
end

["A", "B", "C"].map{ |str| puts str}



def greet_ja(&block)
  texts = ["おはよう", "こんにちは", "こんばんは"]

  # ブロックを別のメソッドに引き渡す
  greet_common(texts, &block)
end

def greet_en(&block)
  texts = ["good morning", "hello", "good evening"]

  # ブロックを別のメソッドに引き渡す
  greet_common(texts, &block)
end

# 出力処理専用の共通メソッド
def greet_common(texts, &block)
  puts texts[0]

  puts block.call(texts[1])

  puts texts[2]
end


greet_ja do |text|
  text * 2
end

greet_en do |text|
  text.upcase!
end

def oyatsu(&block)
  puts "おやつの時間です"
  puts block.class

  text = 
    if block.arity == 1
      yield "アメ玉"
    elsif block.arity == 2
      yield "チョコ", "クッキー"
    end

    puts text
    puts "いただきます"
end

oyatsu do |text|
  text * 2
end

oyatsu do |text_1, text_2|
  text_1 + text_2
end

hello_proc = proc { puts "HELLO!" }

hello_proc.call

sum_proc = Proc.new { |a = 3, b = 2| puts a + b }

sum_proc.call(10,3)


def greet(proc_1, proc_2, proc_3)
  puts proc_1.call("おはよう")
  puts proc_2.call("こんにちは")
  puts proc_3.call("こんばんは")
end

morning_proc = Proc.new {|text| text + "さぎ"}
hello_proc = Proc.new {|text| text + "んもっく"}
evening_proc = Proc.new {|text| text * 2 }

greet(morning_proc, hello_proc, evening_proc)

hello_proc = -> {puts "HELLOOOO!"}
hello_proc.call
sum_proc = -> (a, b) { puts a + b }
sum_proc.call(5, 19)

hello_proc = lambda {puts "HELLOOOO!"}
hello_proc.call
sum_proc = lambda {| a, b| puts a + b }
sum_proc.call(5, 19)


sum_proc = lambda {|a, b| puts a.to_i + b.to_i }
sum_proc.call
