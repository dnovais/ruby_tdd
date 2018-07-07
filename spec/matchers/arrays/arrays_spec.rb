# Set the array like subject 
describe Array.new([1, 2, 3]), "Matchers to Array" do
  context 'Testing the matcher include' do
    it '#include' do
      expect(subject).to include(2)
    end
  end

  # Contain_exactly verify the content from array
  context 'Testing the matcher contain_exactly' do
    it '#contain_exactly' do
      expect(subject).to contain_exactly(1, 2, 3)
    end
  end

  context 'Testing the matcher match_array' do
    it '#match_array' do
      # The matcher match_array expect the complete array (a alias to matcher - contain_exactly)
      expect(subject).to match_array([1, 2, 3])
    end
  end
end