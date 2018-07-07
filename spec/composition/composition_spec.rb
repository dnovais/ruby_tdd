describe 'Ruby On Rails' do
  # We can use .and to add other matcher
  it { is_expected.to start_with('Ruby').and end_with('Rails') }

  # We can use the composition .or too to add others matchers
  it { expect(fruity).to eq('banana').or eq('orange').or eq('grape') }

  def fruity
    %w(banana, orange, grape).sample
  end
end