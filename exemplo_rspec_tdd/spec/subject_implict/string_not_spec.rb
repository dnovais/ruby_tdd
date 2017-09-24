require "string_not_empty"

# Describes aninhados
describe String do
  describe StringNotEmpty do
    it "String not empty" do
      # Subject implicito
      expect(subject).to eq("I m not empty")
    end
  end
end