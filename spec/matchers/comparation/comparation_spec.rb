describe 'Matchers - Comparation' do
  context 'Test the matcher - > (bigger)' do
    it 'Using matcher >' do
      expect(3).to be > 2
    end
  end

  context 'Test the matcher >= (equal or bigger)' do
    it 'Using matcher >=' do
      expect(3).to be >= 3
    end
  end

  context 'Test the matcher < (smaller)' do
    it 'Using matcher <' do
      expect(3).to be < 4
    end
  end

  context 'Test the Matcher <= (Smaller or equal)' do
    it 'Using matcher <=' do
      expect(3).to be <= 3
    end
  end

  context 'Test the matcher be_between().inclusive' do
    it 'Using matcher be_between().inclusive' do
      expect(2).to be_between(2, 6).inclusive
    end
  end

  context 'Test the matcher be_between().exclusive' do
    it 'Using matcher be_between().exclusive' do
      expect(6).to be_between(2, 7).exclusive
    end
  end

  context 'Test the matcher match' do
    it 'Using matcher match to regular expression' do
      expect("email@email.com.br").to match(/..@../)
    end
  end

  context 'Test the matcher start_with' do
    it 'Using matcher start_with' do
      expect([1,2,3]).to start_with(1)
    end
  end

  context 'Test the matcher end_with' do
    it 'Using matcher end_with' do
      expect("the new test").to end_with("test")
    end
  end
end