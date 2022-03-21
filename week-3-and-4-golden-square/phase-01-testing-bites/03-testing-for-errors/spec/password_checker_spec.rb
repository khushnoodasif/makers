require 'password_checker'

RSpec.describe PasswordChecker do

  it "password length is greater than or equal to 8" do
    password_checker = PasswordChecker.new()
    results = password_checker.check("khushnood")
    expect(results).to eq true
  end 

  context "password is invalid" do
    it "fails" do
      password_checker = PasswordChecker.new()
      expect { password_checker.check("") }.to raise_error "Invalid password, must be 8+ characters."
    end
  end
end