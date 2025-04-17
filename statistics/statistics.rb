# statistics.rb
class Statistics
  def initialize(numbers)
    @numbers = numbers
  end

  def find_max
    s_number = 0
    @numbers.each do |number|
      s_number = number if (s_number <=> number) == -1
    end
    s_number
  end

  def find_min
    s_number = @numbers.empty? ? 0 : Float::INFINITY
    @numbers.each do |number|
      s_number = number if (s_number <=> number) == 1
    end
    s_number
  end

  def average
    return 0 if @numbers.empty?

    total = 0
    @numbers.each do |number|
      total += number
    end
    total / Float(@numbers.size)
  end

  def mode
    return [] if @numbers.empty?

    hash = Hash.new(0)
    @numbers.each { |number| hash[number] += 1 }

    reverse_hash = Hash.new { |h, k| h[k] = [] }
    hash.each { |key, val| reverse_hash[val] << key }

    reverse_hash.sort[-1][1]
  end

  def even_numbers
    @numbers.select { |number| number.even? == true }
  end

  def count_vowels(sentence)
    vowels = %w[a e i o u]
    count = 0
    sentence = sentence.downcase.split('')
    sentence.each do |char|
      count += 1 if vowels.include? char
    end
    count
  end

  def factorial(number)
    if number.zero?
      1
    elsif number.positive?
      result = 1
      for i in 1..number
        result *= i
      end
      result
    end
  end
end
