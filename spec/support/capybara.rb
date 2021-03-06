# frozen_string_literal: true

require 'capybara/rspec'
require 'site_prism'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    config.include Capybara::DSL
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
end
