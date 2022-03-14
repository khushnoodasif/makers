require 'report_length'

RSpec.describe "report length method" do
  it "returns length of the string" do
    result = report_length("khushnood")
    expect(result).to eq "This string was 9 characters long."
  end
end