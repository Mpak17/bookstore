# frozen_string_literal: true

RSpec.describe 'MainSlider', type: :feature do
  let(:home_page) { PageObjects::Pages::Home.new }

  before do
    3.times { |_| FactoryBot.create(:book) }
    home_page.load
  end

  it { expect(home_page.main_slider).to have_ol }
  it { expect(home_page.main_slider).to have_item }
  it { expect(home_page.main_slider).to have_active_item }
  it { expect(home_page.main_slider).to have_prev_link }
  it { expect(home_page.main_slider).to have_next_link }
end
