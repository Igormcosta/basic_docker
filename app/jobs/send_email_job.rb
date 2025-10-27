class SendEmailJob < ApplicationJob
  queue_as :default

  def perform(*args)
    
    puts "====== Performing SendEmailJob..."
    sleep 10 
    puts "====== Email sent with args: #{args.inspect}"
    
  end
end
