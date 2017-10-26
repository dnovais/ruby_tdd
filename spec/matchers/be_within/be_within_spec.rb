describe 'Larning about matcher be_within' do
  # Max - 5 times ago or before 12 (a range into 12 with delta (0.5))
  # 11.5, 11.6, 11.7, 11.8, 11.9, 12, 12.1, 12.2, 12.3, 12.4, 12.5
  # <-----------------------------   ----------------------------->
  it { expect(12.5).to be_within(0.5).of(12) }

  it { expect([11.6, 11.9, 12, 12.5]).to all(be_within(0.5).of(12)) }
end