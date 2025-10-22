class StringCalculator
  def self.add(numbers)
    return 0 if numbers.nil?
    return 0 if numbers.empty?
    delimiters = [",", "\n"]

    tempNumbers = [numbers]
    delimiters.each do |d| 
      temp = []
      tempNumbers.each do |t|
        temp.concat(t.split(d))
      end
      tempNumbers = temp
    end
    tempNumbers = tempNumbers.map(&:to_i)
    puts '___'
    puts tempNumbers

    negativeNumbers = tempNumbers.select { |n| n < 0 }

    unless negativeNumbers.empty?
      raise "negative numbers not allowed #{negativeNumbers.join(',')}"
    end

    tempNumbers.sum
  end
end