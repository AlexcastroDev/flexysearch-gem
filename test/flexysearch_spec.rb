# frozen_string_literal: true

require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require_relative '../lib/flexysearch'
require_relative './setup/ar/booking'

class MyprojectTest < Minitest::Test
  def test_show_pending_bookings
    records = Flexysearch.search(Booking, { size: 20 })

    assert_equal 20, records.count
  end
end
