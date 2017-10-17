#Classe herdando da classe String
class StringNotEmpty < String
  def initialize
    self << "I m not empty"
  end
end