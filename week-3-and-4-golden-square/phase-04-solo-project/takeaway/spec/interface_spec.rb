require 'interface'

RSpec.describe Interface do
  xit "returns the menu" do
    menu = double :menu
    allow(menu).to receive(:list).and_return([:dish, :dish2, :dish3])
    interface = Interface.new(menu)
    expect(interface.menu).to eq([:dish, :dish2, :dish3])
  end
end

