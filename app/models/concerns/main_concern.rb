module MainConcern
  extend ActiveSupport::Concern
  included do
    def self.met
      puts "met"
    end
  end

  def savage
    puts "savage"
  end
  self.class_methods do
    def i_like
      'ruby'
    end
  end
  self.instance_methods do
    def i_love
      'git'
    end
  end
end