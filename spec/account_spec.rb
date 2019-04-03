require "./lib/account.rb"
require "date"

describe Account do

    it "check if pin number has 4 digits" do
        expect(subject.pin_number.to_s.length).to eq 4
    end

    it "is expected to have an expiry date on initialize" do
        exp_date_toS = Date.today.next_year(5).to_s
        expected_date = exp_date_toS[5]+exp_date_toS[6]+"-"+exp_date_toS[2]+exp_date_toS[3]
        expect(subject.exp_date).to eq expected_date
    end

    it "is expected to have :active status on initialize" do
        expect(subject.account_status).to eq :active
    end

    it "deactivates account using Instance method" do
        subject.deactivate
        expect(subject.account_status).to eq :deactivated    
    end

end