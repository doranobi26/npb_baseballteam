class Impression < ApplicationRecord

  belongs_to :user
  belongs_to :alcohol

  validates :impression, presence: true
end
