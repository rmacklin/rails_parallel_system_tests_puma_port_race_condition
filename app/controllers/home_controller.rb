class HomeController < ApplicationController
  def index
    @worker_number = Rails.application.config.parallel_test_worker_number
  end
end
