class Book < ApplicationRecord
  has_many :book_authors, dependent: :restrict_with_exception
  has_many :authors, through: :book_authors
  belongs_to :category

  def authors_name
    authors.map(&:full_name).join(' , ')
  end
end
