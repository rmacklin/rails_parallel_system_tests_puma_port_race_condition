require "application_system_test_case"

class SampleSystemTest < ApplicationSystemTestCase
  50.times do |i|
    test "visiting the index #{i + 1}" do
      visit root_url

      assert_selector "h1", text: "Home#index"
      assert_selector "p", text: "Worker number: #{expected_worker_number}"
    end
  end

  test "visiting the index slow1" do
    visit root_url

    sleep 1

    assert_selector "h1", text: "Home#index"
    assert_selector "p", text: "Worker number: #{expected_worker_number}"
  end

  test "visiting the index slow2" do
    visit root_url

    sleep 2

    assert_selector "h1", text: "Home#index"
    assert_selector "p", text: "Worker number: #{expected_worker_number}"
  end

  test "visiting the index slow3" do
    visit root_url

    sleep 3

    assert_selector "h1", text: "Home#index"
    assert_selector "p", text: "Worker number: #{expected_worker_number}"
  end

  test "visiting the index slow4" do
    visit root_url

    sleep 1

    assert_selector "h1", text: "Home#index"
    assert_selector "p", text: "Worker number: #{expected_worker_number}"
  end

  test "visiting the index slow5" do
    visit root_url

    sleep 2

    assert_selector "h1", text: "Home#index"
    assert_selector "p", text: "Worker number: #{expected_worker_number}"
  end

  test "visiting the index slow6" do
    visit root_url

    sleep 3

    assert_selector "h1", text: "Home#index"
    assert_selector "p", text: "Worker number: #{expected_worker_number}"
  end

  private

  def expected_worker_number
    Rails.application.config.parallel_test_worker_number
  end
end
