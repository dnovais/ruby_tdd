# Set the subject like a range
describe (1..5),'Matchers to Range' do
  context 'Testing the matcher Cover to Range' do
    it '#cover' do
      expect(subject).to cover(2, 5)
      expect(subject).not_to cover(0, 6)
    end
  end
end