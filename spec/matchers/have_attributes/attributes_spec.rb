require 'person'

describe 'Matchers - Attributes' do
  context 'Test the matcher - have_attributes' do
    it 'Using the matcher - have_attributes' do
      person = Person.new
      person.name = "Diego"
      person.age = 30
      
      expect(person).to have_attributes(name: 'Diego', age: 30)
    end

    it 'Using the matcher - have_attributes, starting_with, be...' do
      person = Person.new
      person.name = "Diego"
      person.age = 30
      
      expect(person).to have_attributes(name: starting_with("D"), age: (be > 21))
    end

    it 'Using the matcher - have_attributes, a_string_starting_with, a_value...' do
      person = Person.new
      person.name = "Lorenna"
      person.age = 29

      expect(person).to have_attributes(name: a_string_starting_with('L'), age: (a_value > 21) )
    end
  end
end