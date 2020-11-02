class Publication < ApplicationRecord
  has_and_belongs_to_many :authors

  enum publication_type: [:book, :magazine]
end
