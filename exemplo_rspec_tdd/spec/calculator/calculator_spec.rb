#Adiciona a respectiva classe para o teste
require 'Calculator'

#Inicia o teste passando a descricao do teste, ou seja, o teste sera referente à classe Calculator
describe Calculator do
	#Passando o contexto, por ex. testaremos o metodo sum da classe Calculator
	context '#sum' do
		#O teste e valor esperado
		it 'for 2 numbers' do
			#setup
			calc = Calculator.new
			#Exercise
			result = calc.sum(2, 5)
			#verify
			expect(result).to eq(7)
		end

		it 'for 2 numbers, one negative and other positive' do
			#setup
			calc = Calculator.new
			#exercise
			result = calc.sum(-2, 5)
			#verify
			expect(result).to eq(3)
		end

	end
end