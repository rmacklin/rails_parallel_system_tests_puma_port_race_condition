require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :headless_chrome, screen_size: [1400, 1400]

  parallelize_setup do |worker_number|
    driver.use

    puma_port = Capybara.current_session.server.port
    puts "Worker #{worker_number}'s puma port: #{puma_port}"
  end
end
