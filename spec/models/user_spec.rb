require 'rails_helper'

RSpec.describe User, type: :model do

	before(:each) do 
		@user = FactoryBot.create(:user)  	
  end

  it "has a valid factory" do
    # vérifie si la factory est valide
    expect(build(:user)).to be_valid
  end

  context "validation" do
    it "is valid with valid attributes" do
      expect(@user).to be_a(User)
    end
    describe "#first_name" do
      it { expect(@user).to validate_presence_of(:first_name) }
		end

		describe "#last_name" do
      it { expect(@user).to validate_presence_of(:first_name) }
		end

		describe "#email" do
      it { expect(@user).to validate_presence_of(:email) }
      it { expect(@user).to validate_uniqueness_of(:email) }
      it { is_expected.to allow_value("email@addresse.foo").for(:email) }
      it { is_expected.to_not allow_value("foo").for(:email) }
      it { is_expected.to_not allow_value("jean@examplecom").for(:email) }
		end

  end

  context "associations" do
  	it { expect(@user).to belong_to(:city) }
    it { expect(@user).to have_many(:gossips) }
  end

end
