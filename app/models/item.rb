class Item < ApplicationRecord
  belongs_to :list

  validates :description, presence: :description
end
