require 'shoulda/matchers'

describe User do

    it "has an name" do
      user = FactoryGirl.build(:a_user)
      expect(user.name).to_not be_nil
    end

    it "has a password" do
      user = FactoryGirl.build(:a_user)
      expect(user.password).to_not be_nil
    end


    it { should validate_presence_of(:name) }

    it { should validate_presence_of(:password) }
end
