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
    hash = Hash.new(0)
    @numbers.each { |number| hash[number] += 1}

    max_key = []
    hash.each do |key, val|
      if max_key.empty?
        max_key << key
      elsif hash[max_key[0]] < hash[key]
        max_key[0] = key
      end
    end
    
    max_key
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
