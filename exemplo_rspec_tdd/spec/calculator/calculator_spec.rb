# Adicionar o arquivo da class ou arquivo solicitado e n precisa ser o caminho todo / relativo
require 'calculator'

#Descreve o teste
describe Calculator do

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

		###### Verify #####
 		# O resultado deve ser igual a 11
		expect(result).to eq(12)
	end

	it 'use sum method for 2 numbers negative numbers' do
		#calc = Calculator.new
		#result = subject.sum(-5, 7)
		result = calc.sum(-5, 7)
		expect(result).to eq(2)
	end
end