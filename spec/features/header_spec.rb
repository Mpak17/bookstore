# frozen_string_literal: true

RSpec.describe 'Header', type: :feature do
  let(:home_page) { PageObjects::Pages::Home.new }

  before { home_page.load }

  it { expect(home_page.header).to have_store_name }
  it { expect(home_page.header).to have_menu }
end
