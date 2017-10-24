describe 'Ruby On Rails' do
  it { is_expected.to start_with('Ruby').and end_with('Rails') }

  it { expect(fruity).to eq('banana').or eq('orange').or eq('grape') }

  def fruity
    %w(banana, orange, grape).sample
  end
end