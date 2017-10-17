require 'calculator'

describe Calculator, 'Error Matchers' do
  context 'The matcher - raise_exception' do
    it 'Using the matcher - raise_exception' do
      # when we need to test, and interpret one exception error, is necessary pass it into block.
      # Ps.: The matcher raise_exception is too generic and dangerous, therefore, use a specific matcher.
      expect{subject.div(3, 0)}.to raise_exception
    end
  end

  context 'The matcher - raise_error' do
    it 'Using the matcher - raise_error' do
      expect{subject.div(3, 0)}.to raise_error(ZeroDivisionError)
    end

    it 'Using the matcher - raise_error more complex' do
      #expect{subject.div(3, 0)}.to raise_error(ZeroDivisionError, "Divided by 0")
      expect{subject.div(3, 0)}.to raise_error(ZeroDivisionError, "divided by 0")
    end

    it 'Using the metcher - raise_error with regular expression' do
      expect{subject.div(3, 0)}.to raise_error(/divided/)
    end
  end
end