module Rainbowable

  # def rainbow
  #   # 1.to_sメソッドで自分自身の文字列を取得
  #   str = self.to_s

  #   # 2.ループカウンターと文字列入れる配列用意
  #   count = 0
  #   colored_chars = []

  #   # 3.
  #   str.each_char do |char|
  #     # 文字列は31~36で最後まで進んだらまた31に戻る
  #     color = 31 + count % 6

  #     # 3.各文字の手前にANSIエスケープシーケンスを付与して配列に入れる
  #     colored_chars << "\e[#{color}m#{char}"

  #     count += 1
  #   end

  #   # 各文字を連結して一つにする
  #   ret = colored_chars.join

  #   # 最後に文字色をリセットするための\e[0mを付与
  #   ret + "\e[0m"
  # end

  def rainbow
    to_s.each_char.map.with_index do |char, count|
      color = 31 + count % 6
      "\e[#{color}m#{char}"
    end.join + "\e[0m"
  end

end
