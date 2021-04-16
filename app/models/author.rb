class Author < ApplicationRecord
  has_many :book_authors, dependent: :restrict_with_exception
  has_many :books, through: :book_authors

  def full_name
    "#{first_name} #{last_name}"
  end
end
