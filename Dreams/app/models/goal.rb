class Goal < ApplicationRecord
  validates :body, :reached, presence: true
  validates :title, presence: true, uniqueness: {scope: :user}

  belongs_to(:user)

end
