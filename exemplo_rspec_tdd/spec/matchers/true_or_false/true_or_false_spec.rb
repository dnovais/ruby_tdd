describe 'Matchers - True or False' do
  context 'Matcher be' do
    it 'Using the matcher - Be to test number impar' do
      expect(1.odd?).to be true
    end

    it 'Using the matcher - Be to test number par' do
      expect(1.even?).to be false
    end
  end

  context 'Matcher be_truthy - like be' do
    it 'Using the matcher - Be_ruthy' do
      expect(2.even?).to be_truthy
    end
  end

  context 'Matcher be_falsey - like false' do
    it 'Using the matcher - Be_falsey' do
      expect(2.odd?).to be_falsey
    end
  end

  context 'Matcher be_nil' do
    it 'Using the matcher - Be_nil' do
      expect(defined? x).to be_nil
    end
  end
end