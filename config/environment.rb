# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

module M1
  def test
    p 'test from module'
  end
end
class Pre
  prepend M1
  def test
    p 'test from class'
  end
end
