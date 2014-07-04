class Person < ActiveRecord::Base
  enum status: [:active, :inactive, :follow_up]
end
