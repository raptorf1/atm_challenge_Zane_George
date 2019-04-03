require "./lib/account.rb"

describe Account do

    it "check if pin number has 4 digits" do
        expect(subject.pin_number.to_s.length).to eq 4
    end

end