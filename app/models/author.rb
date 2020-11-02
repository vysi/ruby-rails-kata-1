class Author < ApplicationRecord
  has_and_belongs_to_many :publications

  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
  validates :first_name, presence: true
  validates :last_name, presence: true

  def self.from_csv(path)
    CSV.foreach(path, {col_sep: ';', headers: true, header_converters: :symbol}) do |row|
      Author.find_or_create_by!(
        email: row[:email],
        first_name: row[:firstname],
        last_name: row[:lastname]
      )
    end
  end
end
