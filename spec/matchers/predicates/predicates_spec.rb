describe 'Matchers - Predicates (like predicates methods)' do
  context 'Test the matcher be_odd' do
    it 'Using the matcher be_odd' do
      expect(1).to be_odd
    end
  end

  context 'Test the matcher be_even' do
    it 'Using the matcher be_even' do
      expect(2).to be_even
    end
  end
end