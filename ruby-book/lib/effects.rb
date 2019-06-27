module Effects
  def self.reverse
    ->(words) {words.split(' ').map(&:reverse).join(' ')}
  end

  def self.echo(rate)
    -> (words) do
      words.chars.map {|c| c == ' ' ?  c : c * rate}.join
    end
  end

  def self.loud(level)
    ->(words) do
      words.split(' ').map { |w| w.upcase + '!' * level }.join(' ')
    end
  end
end