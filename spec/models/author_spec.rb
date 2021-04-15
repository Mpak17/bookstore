require 'rails_helper'

RSpec.describe Author, type: :model do
  describe 'ActiveRecord associations' do
    it { is_expected.to have_many(:books) }
  end

  describe 'full_name' do
    let(:author) { FactoryBot.create(:author) }

    it do
      expect(author.full_name).to eq "#{author.first_name} #{author.last_name}"
    end
  end
end
