# frozen_string_literal: true

# Example consumer that prints messages payloads
class ExampleConsumer < ApplicationConsumer
  puts "✅ ExampleConsumer loaded"

  def consume
    begin
    puts "Entrouuuuuuu"
    messages.each { |message| puts message.payload }
    rescue JSON::ParserError => e
      # Log and skip this message
      Karafka.logger.error "JSON parse error for message: , error:"
      # Optionally notify monitoring or send message to dead-letter queue
    rescue => e
      # Catch other unexpected errors
      Karafka.logger.error "Error processing message: #{e.message}"
    end
  end

  # Run anything upon partition being revoked
  # def revoked
  # end

  # Define here any teardown things you want when Karafka server stops
  # def shutdown
  # end
end
