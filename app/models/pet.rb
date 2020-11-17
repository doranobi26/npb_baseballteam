class Pet < ApplicationRecord

  belongs_to :user
  belongs_to :alcohol

  validates_uniqueness_of :alcohol_id, scope: :user_id
end
