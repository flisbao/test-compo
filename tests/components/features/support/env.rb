# frozen_string_literal: true

require 'component_tests/env'
require 'component_tests/helpers/tshield'
require 'component_tests/helpers/gtm'
require 'component_tests/helpers/wait_helper'
require 'component_tests/step_definitions/step_analytics'
require 'site_prism'

module CustomWorld
  #include Helpers::Screenshot
  include Helpers::TShield
end

World(CustomWorld)
