#Adiciona a respectiva classe para o teste
require 'Calculator'

#Inicia o teste passando a descricao do teste, ou seja, o teste sera referente à classe Calculator
describe Calculator do
<<<<<<< HEAD
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
=======

	# Fazendo o setup usando subject como outro nome
	subject(:calc) { described_class.new() }

	# Descricao do que vc espera
	it 'use sum method for 2 numbers' do
		
		##### Setup #####
		# usando o subject, não é necessário instanciar a classe, pois quando se usa o subject, ja subentende
		# que esta sendo referenciado uma instancia da classe.
		#calc = Calculator.new
		
		##### Exercise ##### 
		#result = subject.sum(5, 7)
		result = calc.sum(5, 7)
>>>>>>> using_subject

		it 'for 2 numbers, one negative and other positive' do
			#setup
			calc = Calculator.new
			#exercise
			result = calc.sum(-2, 5)
			#verify
			expect(result).to eq(3)
		end

<<<<<<< HEAD
=======
	it 'use sum method for 2 numbers negative numbers' do
		#calc = Calculator.new
		#result = subject.sum(-5, 7)
		result = calc.sum(-5, 7)
		expect(result).to eq(2)
>>>>>>> using_subject
	end
end