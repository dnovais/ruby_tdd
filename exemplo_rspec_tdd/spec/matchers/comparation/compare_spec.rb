describe 'Comparation matchers' do
  # Testing with matcher equal
  context "Matcher equal" do
    it "compare numbers with matcher - equal" do
      x = "test"
      y = "test"
      
      # The test with matcher equal, tests if the objects is the same (to equal or not_to equal)
      expect(x).not_to equal(y)
    end
  end

  # Testing with matcher be
  context "Matcher be" do
    it 'compare numbers with matcher - be' do
      x = "One more test"
      y = "One more test"

      # The test with matcher be, tests if the objects is the same (to be or not_to be)
      expect(x).to be(x)
    end
  end

  # Testing with matcher eql
  context "Matcher eql" do
    it "Compare numbers with matcher - eql" do
      x = "test"
      y = "test"

      # The test with matcher eql, tests if the objects has the same value
      expect(x).to eql(y)
    end

    #Or can be used the equivalent to eql - eq
    it "Compare numbers with matcher - eq" do
      x = "ruby"
      y = "ruby"

      # The test with matcher eq, tests if the objects has the same value
      expect(x).to eq(y)
    end
  end
end