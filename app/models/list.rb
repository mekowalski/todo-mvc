class List < ApplicationRecord
  has_many :items

  validates :name, presence: :name
end
