# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

require 'rspec'

class Sum_of_multiples_of_3_and_5

	def multiple_of_3(num)
		(num % 3).zero?
	end 

	def multiple_of_5(num)
		(num % 5).zero?
	end

	def add_array_content(array)
		array.inject(:+)
	end

	def Sum_multiples

		sum_array = []

		for num in 1...1000

			if multiple_of_3(num) == true || multiple_of_5(num) == true
				sum_array.push(num)

			end

		end
		add_array_content(sum_array)
	end

end


describe "Multiples of 3 and 5" do

	before(:each) do
		@calculator = Sum_of_multiples_of_3_and_5.new
	end

	it "should return true if the number is a multiple of 3" do
		expect(@calculator.multiple_of_3(3)).to be true
	end

	it "should return true if the number is a multiple of 5" do
		expect(@calculator.multiple_of_5(25)).to be true
	end

	it "should return a value for the sum of the final array" do
		final_sum = @calculator.Sum_multiples
		expect(final_sum).to eq(233168)

	end

	it 'should return a value for add array content' do
		array = [3,5]
		sum_array = @calculator.add_array_content(array)
		expect(sum_array).to eq(8)

	end


end



