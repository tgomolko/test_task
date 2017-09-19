class Multiplication

	def max_multiplication any_str
		selected_string = any_str.scan(/\d{4,}/)
		if selected_string != []
			find_combinations(selected_string)
		else
			p nil
		end 
	end

	def find_combinations(selected_string)
		@combinations_arrays = []
			selected_string.each_index do |i|
				@combinations_arrays << selected_string[i].split(//).map(&:to_i)
			end
			@combinations_arrays.each do |item| 
				if item.length == 4 
					@max_mult = item[0..3].inject(1) { |mult, x| mult * x }
				end
				if item.length > 4
					@max_value  = item[0..3].inject(1) { |mult, x| mult * x }    
						while (item.length - 4 != -1)
							@max_mult_2 = item[0..3].inject(1) { |mult, x| mult * x }
								if @max_mult_2 > @max_value
									@max_value = @max_mult_2
								end
							item.shift
						end 
				end
			end
			if @max_mult && ( @max_mult > @max_value ) 
				puts "Mах value of 4 digits in row is - #{@max_mult}"
			else
				puts "Mах value of 4 digits in row is - #{@max_value}"
			end 
	end

end
 m = Multiplication.new
 m.max_multiplication("abc1237dxzxzdsa344546995414р999")
 m.max_multiplication'abc12345de91sas999'
 m.max_multiplication "a1b2c3d4e"