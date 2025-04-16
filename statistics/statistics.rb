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
    s_number = Float::INFINITY
    @numbers.each do |number|
      s_number = number if (s_number <=> number) == 1
    end
    s_number
  end

  def average
    total = 0
    @numbers.each do |number|
      total += number
    end
    total / Float(@numbers.size)
  end

  def mode
    sorted_mode = @numbers.sort
    mid_index = sorted_mode.size / 2.0
    if sorted_mode.size.even?
      [(sorted_mode[mid_index - 1] + sorted_mode[mid_index]) / 2]
    else
      Integer(mid_index)
      [sorted_mode[0]]
    end
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
    elsif number > 0
      result = 1
      for i in 1...6
        result *= i
      end
      result
    end
  end
end
