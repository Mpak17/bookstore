# frozen_string_literal: true

require 'simplecov'

SimpleCov.start 'rails' do
  minimum_coverage 5
  add_filter %w[app/models app/helpers app/channels app/jobs app/mailers]
end
