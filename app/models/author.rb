class Author < ApplicationRecord
  has_and_belongs_to_many :publications

  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
  validates :first_name, presence: true
  validates :last_name, presence: true
end
