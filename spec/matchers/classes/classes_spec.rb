require "string_not_empty"

describe 'Matchers - Classes' do
  context 'Testing the matcher be_instance_of' do
    it 'Using matcher be_instance_of' do
      # Be_instance_of expect that the object is exactly an instance of the direct class
      expect(10).to be_instance_of(Integer)
    end
  end

  context 'Testing the matcher be_kind_of' do
    it 'Using matcher be_kind_of' do
      # Be_kind_of expect that the object is exactly an instance of the direct or nested class
      expect(10).to be_kind_of(Integer)
    end

    # The matcher be_kind_of get all heritage
    it 'Using matcher be_kind_of to nested instance' do
      string = StringNotEmpty.new
      expect(string).to be_kind_of(String)
      expect(string).to be_kind_of(StringNotEmpty)
    end
  end

  context 'Testing the matcher respont_to' do
    # The matcher respond_to, verify if the object get response from the method.
    it 'Using matcher respond_to' do
      expect("test").to respond_to(:count)
    end
  end

  context 'Testing the matcher be_a and be_an' do
    # This matchers is like be_kind_of, but with a better sintax
    it 'Using matcher be_a' do
      name = "A name"
      expect(name).to be_a(String)
    end

    it 'Using matcher be_an' do
      number = 20
      expect(number).to be_an(Integer)
    end
  end
end