class FindBooks
  DEFAULT_ORDER_COLUMN = 'created_at'.freeze
  AVAILABLE_ORDER_COLUMNS = %w[created_at price title view_count].freeze
  SORT_LIST_NAME = {
    '-created_at' => 'Newest first',
    '-view_count' => 'Popular first',
    'price' => 'Price: Low to hight',
    '-price' => 'Price: Hight to low',
    'title' => 'Title: A - Z',
    '-title' => 'Title: Z - A'
  }.freeze

  attr_reader :params

  def initialize(params)
    @params = params
  end

  def perform
    @books = Book.includes(:authors)
    apply_filters
    apply_sorting
    @books
  end

  def name_form_sorting
    if params.key?(:sort_by) && sort_by_include?
      SORT_LIST_NAME[sorting_column]
    else
      SORT_LIST_NAME['-created_at']
    end
  end

  private

  def apply_filters
    apply_category_filters
  end

  def apply_sorting
    @books = @books.order("#{sorting_column.tr('-', '')} #{sorting_direction}")
  end

  def sorting_direction
    if params.key?(:sort_by) && sort_by_include?
      params[:sort_by][0] == '-' ? 'DESC' : 'ASC'
    else
      'DESC'
    end
  end

  def sorting_column
    params.key?(:sort_by) && sort_by_include? ? params[:sort_by] : DEFAULT_ORDER_COLUMN
  end

  def apply_category_filters
    return unless params.key?(:category)

    category = Category.find_by(title: params[:category])

    return unless category

    @books = @books.where(category_id: category.id)
  end

  def sort_by_include?
    AVAILABLE_ORDER_COLUMNS.include?(params[:sort_by].tr('-', ''))
  end
end
