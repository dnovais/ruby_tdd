# Add the class archive requested, and don't need the full way
require 'calculator'

# Describe the test, can be the class name or one description
describe Calculator, 'One test to Calculator Class' do

	# Make a setup using the explicit subject, and if need, can pass the parameters
	subject(:calc) { described_class.new() }

	# The test of the class Calculator in the context of the method Sum
	context '#sum' do
		# Description about what do you wait, you could use it, specify or example
		it 'for 2 numbers' do
			
			##### Setup #####
			# Using the subject don't be needed instantiate, because when is used subject, it's already understood that don't that this make reference a classe.
			#calc = Calculator.new
			
			##### Exercise ##### 
			#result = subject.sum(5, 7)
			result = calc.sum(5, 7)

			###### Verify #####
			# The result should be 12
			expect(result).to eq(12)
		end

		it 'use sum method for 2 numbers negative numbers' do
			#calc = Calculator.new
			#result = subject.sum(-5, 7)
			result = calc.sum(-5, 7)
			expect(result).to eq(2)
		end

		# If let the test like this, this will appear like pending.
		#it 'for 2 numbers negatives'
		
		# Other form to let the test like pending or canceled, would be put de x before the "it"
		xit 'for 2 numbers negatives' do
			result = calc.sum(-5, -8)
			expect(result).to eq(-2)
		end

		#### Tips ###
		# To run an specific test and in the specific line 
			#spec spec/calculator/calculator_spec.rb:15
		# To run an specific test with specfic title
			#spec spec/calculator/calculator_spec.rb -e "for 2 numbers, one negative, and other, positive numbers"

	end
end