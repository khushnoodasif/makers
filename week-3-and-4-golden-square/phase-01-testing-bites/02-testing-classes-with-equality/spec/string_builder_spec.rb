require 'string_builder'

RSpec.describe StringBuilder do
  it "builds empty string as output" do
    string_builder = StringBuilder.new()
    expect(string_builder.output).to eq ""
  end

  it "returns length of string" do
    string_builder = StringBuilder.new()
    expect(string_builder.size).to eq 0
  end

  it "outputs the string" do
    string_builder = StringBuilder.new()
    string_builder.add("hello")
    expect(string_builder.output).to eq "hello"
  end

  it "outputs the string and length" do
    string_builder = StringBuilder.new()
    string_builder.add("hello")
    string_builder.add("world")
    expect(string_builder.size).to eq 10
  end
end