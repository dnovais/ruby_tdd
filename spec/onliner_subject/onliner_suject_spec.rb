describe (1..5), 'On-liner subject' do
  context 'Testing using on-liner subject' do
    it '#cover with on-liner subject' do
      is_expected.to cover(2)
    end

    # Implicit description
    # On-line sintax
    it {is_expected.to cover(3)}

    it {is_expected.to cover(2, 5)}
  end
end