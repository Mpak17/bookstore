# frozen_string_literal: true

RSpec.describe 'Footer', type: :feature do
  let(:home_page) { PageObjects::Pages::Home.new }

  before { home_page.load }

  it { expect(home_page.footer).to have_footer_menu }
  it { expect(home_page.footer).to have_footer_mail }
  it { expect(home_page.footer).to have_footer_phone }
end
