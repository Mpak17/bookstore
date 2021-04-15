class Book < ApplicationRecord
  has_many :book_authors
  has_many :authors, through: :book_authors

  def authors_name
    authors.map(&:full_name).join(' , ')
  end
end
