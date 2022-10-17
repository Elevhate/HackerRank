def skip_animals(animals, skip)
    # Your code here
      arr = []
      animals.each_with_index do |item, index| 
              arr << "#{index}:#{item}" unless index < skip
      end
      return arr
  end