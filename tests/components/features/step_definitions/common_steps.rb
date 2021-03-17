# frozen_string_literal: true

require('byebug')

Dado('que eu {string}') do |scenario|
  start_session(scenario.gsub(' ', '_'))
end
