require "./lib/atm.rb"
require "date"

describe Atm do
    let(:account) {instance_double("Account", pin_number: "1234", exp_date: "04/20", account_status: :active)}

    before do
        allow(account).to receive(:balance).and_return(100)
        allow(account).to receive(:balance=)
    end

    it "reject withdraw if card is expired" do
        allow(account).to receive(:exp_date).and_return("12/15")
        expected_output = {status: false, message: "card expired", date: Date.today.strftime("%d/%m/%y")}
        expect(subject.withdraw(50, "1234", account)).to eq expected_output
    end
    
    it "has $1000 on initialize" do
        expect(subject.funds).to eq 1000
    end

    it "rejects withdrawal if amount is not divisible by 5" do
        expected_output = {status: false, message: "Amount must be a multiple of 5", date: Date.today.strftime("%d/%m/%y")}
        expect(subject.withdraw(43, "1234", account)).to eq expected_output
    end

    it "funds are reduced at withdraw" do
        subject.withdraw(50, "1234", account)
        expect(subject.funds).to eq 950
    end

    it "allow withdraw if account has enough balance" do
        expected_output = {status: true, message: "success", date: Date.today.strftime("%d/%m/%y"), amount: 45, bills: [20, 20, 5]}
        expect(subject.withdraw(45, "1234", account)).to eq expected_output
    end

    it "reject withdraw if account has insufficient funds" do
        expected_output = {status: false, message: "insufficient funds", date: Date.today.strftime("%d/%m/%y")}
        expect(subject.withdraw(105, "1234", account)).to eq expected_output
    end

    it "reject withdraw if ATM has insufficient funds" do
        subject.funds = 50
        expected_output = {status: false, message: "insufficient funds in ATM", date: Date.today.strftime("%d/%m/%y")}
        expect(subject.withdraw(100, "1234", account)).to eq expected_output
    end

    it "reject withdraw if pin is wrong" do
        expected_output = {status: false, message: "wrong pin", date: Date.today.strftime("%d/%m/%y")}
        expect(subject.withdraw(50, "9999", account)).to eq expected_output
    end

    it "reject withdraw if account is disabled" do
        expected_output = {status: false, message: "account disabled", date: Date.today.strftime("%d/%m/%y")}
        allow(account).to receive(:account_status).and_return(:disabled)
        expect(subject.withdraw(70, "1234", account)).to eq expected_output
    end
   

end