class Goal < ApplicationRecord
  has_many :plans, dependent: :destroy
  belongs_to :user
end
