require 'faker'
require 'pg'
require 'rake/testtask'
require_relative 'test/setup/ar/booking'

# Debugging
# ActiveRecord::Base.logger = Logger.new(STDOUT)

task :migrate do
  ActiveRecord::Schema.define do
    create_table :bookings, force: true do |t|
        t.integer :status, default: 0, null: false
        t.text :notes

        t.timestamps
    end
  end
end

task :seed do
  ActiveRecord::Base.transaction do
    100.times do
      Booking.create(status: Booking.statuses.keys.sample, notes: Faker::Lorem.sentence)
    end
  end
end

task :long_seed do
  ActiveRecord::Base.transaction do
      50000.times do
        Booking.create(status: Booking.statuses.keys.sample, notes: Faker::Lorem.sentence)
      end
  end
end