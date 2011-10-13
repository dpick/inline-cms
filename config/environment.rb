# Load the rails application
require File.expand_path('../application', __FILE__)

$imgur = Imgur::API.new("542ef2505325e0899ff2933b86eac9ff")

# Initialize the rails application
Cms::Application.initialize!
