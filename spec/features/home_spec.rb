# frozen_string_literal: true

RSpec.describe 'Home', type: :feature do
  let(:home_page) { PageObjects::Pages::Home.new }

  before { home_page.load }

  it { expect(home_page).to have_current_path(root_path) }
  it { expect(home_page.displayed?).to be(true) }
  it { expect(home_page).to have_header }
  it { expect(home_page).to have_main_slider }
  it { expect(home_page).to have_welcome_block }
  it { expect(home_page).to have_best_sellers }
  it { expect(home_page).to have_footer }
end
