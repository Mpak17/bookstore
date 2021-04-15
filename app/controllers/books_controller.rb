class BooksController < ApplicationController
  attr_accessor :page

  before_action :set_post, only: [:show]

  def index
    @pagy, @books = pagy(::FindBooks.new(params).perform)
    @search_params = search_params
    @books_count = Book.all.count
    @page = 2
  end

  def show
    @book.increment!(:view_count)
  end

  private

  def set_post
    @book = Book.find(params[:id])
  end

  def search_params
    params.permit(:category, :sort_by, :page)
  end
end
