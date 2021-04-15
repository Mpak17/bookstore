require 'rails_helper'

RSpec.describe Book, type: :model do
  it { is_expected.to have_many(:authors) }
end
