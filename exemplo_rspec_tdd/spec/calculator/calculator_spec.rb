#Adiciona a respectiva classe para o teste
require 'Calculator'

#Descreve o teste, o nome da classe e podemos também adicionar uma descrição para o describe
describe Calculator, 'One test to Calculator Class' do

	# Fazendo o setup usando subject explicito como outro nome, e se precisar passar parametros
	# basta passa - los dentro do described_class
	subject(:calc) { described_class.new() }

	# Descricao do que vc espera
	context 'use sum method for 2 numbers' do
		
		##### Setup #####
		# usando o subject, não é necessário instanciar a classe, pois quando se usa o subject, ja subentende
		# que esta sendo referenciado uma instancia da classe.
		#calc = Calculator.new
		
		##### Exercise ##### 
		#result = subject.sum(5, 7)
		#result = calc.sum(5, 7)

		it 'for 2 numbers, one negative and other positive' do
			#setup
			calc = Calculator.new
			#exercise
			result = calc.sum(-2, 5)
			#verify
			expect(result).to eq(3)
		end

		it 'use sum method for 2 numbers negative numbers' do
			#calc = Calculator.new
			#result = subject.sum(-5, 7)
			result = calc.sum(-5, 7)
			expect(result).to eq(2)
		end
		
		# Outra forma de deixar o teste como pendente ou cancelado, seria usar o x antes do it...
		xit 'for 2 numbers negatives' do
			result = calc.sum(-5, -8)
			expect(result).to eq(-2)
		end

		#### Dicas ####
		# Para rodar uma linha especifica do test 
			#spec spec/calculator/calculator_spec.rb:15
		# Para rodar um teste especifico pelo seu titulo
			#spec spec/calculator/calculator_spec.rb -e "for 2 numbers, one negative, and other, positive numbers"

	end
end