# Adicionar o arquivo da class ou arquivo solicitado e n precisa ser o caminho todo / relativo
require 'calculator'

#Descreve o teste
describe Calculator do

	# Fazendo o setup usando subject como outro nome
	subject(:calc) { described_class.new() }

	# O teste da classe Calculator no contexto do metodo sum
	context '#sum' do
		# Descricao do que vc espera
		it 'for 2 numbers' do
			
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

		it 'for 2 numbers, one negative, and other, positive numbers' do
			result = calc.sum(-5, 7)
			expect(result).to eq(2)
		end

		# Se deixar o teste assim, ele ira aparecer como pendente.
		#it 'for 2 numbers negatives'
		
		# Outra forma de deixar o teste como pendente ou cancelado, seria usar o x antes do it
		xit 'for 2 numbers negatives' do
			result = calc.sum(-5, -7)
			expect(result).to eq(2)
		end

		#### Dicas ####
		# Para rodar uma linha especifica do test 
			#spec spec/calculator/calculator_spec.rb:15
		# Para rodar um teste especifico pelo seu titulo
			#spec spec/calculator/calculator_spec.rb -e "for 2 numbers, one negative, and other, positive numbers"

	end
end