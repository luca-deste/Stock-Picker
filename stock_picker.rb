def stock_picker(arr)
  smallest = 0
  biggest = 0
  diff = 0
  arr.each do |num|
    arr.each do |comp|
      p arr.index(comp) > arr.index(num) && num < comp
      if num < comp && arr.index(comp) > arr.index(num)
        if diff == 0 || diff < comp - num
          diff = comp - num
          smallest = num
          biggest = comp
        end
      end
    end
  end
  days = [arr.index(smallest),arr.index(biggest)]
  p days
  puts "for a profit of #{biggest-smallest}$"
end

stock_picker([17,3,6,9,15,8,6,1,10])
