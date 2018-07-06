require "string_not_empty"

# Nested describes
describe String do
  # This 'describe' won, and here, it's the implicit subject
  describe StringNotEmpty do
    it "String not empty" do
      # Implicit subject
      expect(subject).to eq("I m not empty")
    end
  end
end