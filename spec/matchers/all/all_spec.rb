# Test using the matcher all, it's mean that all elements from your collection should matcher your test
describe "Test using the matcher all" do
  it { expect([1, 7, 9]).to all((be_odd).and be_an(Integer)) }

  it { expect(['Ruby', 'Rails']).to all(be_a(String).and include('R')) }
end