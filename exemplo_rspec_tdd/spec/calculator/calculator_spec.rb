# Adicionar o arquivo da class ou arquivo solicitado e n precisa ser o caminho todo / relativo
require 'calculator'

#Descreve o teste
describe Calculator do
	# Descricao do que vc espera
	it 'use sum method for 2 numbers' do
		calc = Calculator.new
		result = calc.sum(5, 7)
		# O resultado deve ser igual a 11
		expect(result).to eq(12)
	end

	it 'use sum method for 2 numbers negative numbers' do
		calc = Calculator.new
		result = calc.sum(-5, 7)
		expect(result).to eq(2)
	end
end