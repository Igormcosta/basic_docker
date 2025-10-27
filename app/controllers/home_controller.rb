class HomeController < ApplicationController
  def index
    puts "------- HomeController#index action called"
    (1..5).to_a.each do |num|
      sleep 1
      SendEmailJob.perform_later("Email number #{num}")
    end
    puts "------- HomeController#index action completed"
    @message = "Hello, World!"
  end
end