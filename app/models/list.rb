class List < ApplicationRecord
  has_many :items

  validates :name, presence: :name
  #presence: :true also works properly but this is a new way for me and seems cleaner for me personally
end
