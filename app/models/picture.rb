class Picture < ApplicationRecord

  belongs_to :alcohol
  attachment :picture
end
