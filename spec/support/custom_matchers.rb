include ApplicationHelper
include RSpec

module CustomMatchers
  RSpec::Matchers.define :be_titled do |message|
    match do |page|
      page.should have_selector('h1', text: message)
      page.should have_selector('title', text: message)
    end
  end

  RSpec::Matchers.define :have_error_message do |message|
    match do |page|
      page.should have_selector('div.alert.alert-error', text: message)
    end
  end

  RSpec::Matchers.define :have_success_message do |message|
    match do |page|
      page.should have_selector('div.alert.alert-success', text: message)
    end
  end
end