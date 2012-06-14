require 'tasks/standalone_migrations'

class Object
  def self.const_missing(const)
    if const == :Rails
      StandaloneMigrations::Rails
    else
      super
    end
  end
end
