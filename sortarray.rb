class SortArray
#Convertation decimal array to binary items
=begin
    def convert_array_to_binary array
      array.each do |item|
        rem_ar = []
         while item > 0
            rem = item % 2
            rem_ar << rem
            item  =  item / 2 
         end
      end
    end
=end

  def sort array
    array.sort_by { |number| number.to_s(2).count('1') } 
  end
end

s = SortArray.new

array = [3,7,8,9]
a = [1,4,332,234,10,25]
p s.sort array
p s.sort a