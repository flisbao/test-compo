Before do |scenario|
  @scenario = scenario
  stop_session
  current_tags = scenario.source_tag_names
  skip_tags = Helpers::FeatureFlagStub.skip_tags
  skip_this_scenario if current_tags.any? {|tag| skip_tags.include?(tag)}
  Capybara.current_session.current_window.resize_to(1366,  1024)
end

After do
  stop_session
end

