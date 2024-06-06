require_relative 'base'

class Booking < ActiveRecord::Base
  enum status: { pending: 0, confirmed: 1, canceled: 2 }

  def self.flexysearch_attributes
    %i[status notes]
  end
end
