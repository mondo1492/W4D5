require 'spec_helper'
require 'rails_helper'

# RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe User do
  subject(:user) do
    FactoryGirl.build(:user,
      username: "tianyuduan",
      password: "password")
  end


  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_length_of(:password).is_at_least(6) }

  it {should have_many(:goals)}

  #no associations


end
  # '''models validations, associations, and class scope methods (eg. User::find_by_credentials) '''

  
