module Effects
  def self.reverse
    ->(word) do
      word.split(' ').map(&:reverse).join(' ')
    end
  end

  def self.echo(rate)
    ->(word) do
      word.each_char.map.map{ |str| str == ' ' ? str : str * rate }.join
    end
  end

  def self.loud(level)
    ->(word) do
      word.split(' ').map{ |str| str.upcase + "!" * level }.join(' ')
    end
  end
end

puts Effects.reverse.call("HELLO")
puts Effects.echo(2).call("Ruby is fun!")
puts Effects.loud(3).call("many many people")