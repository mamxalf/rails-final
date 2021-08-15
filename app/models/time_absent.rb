# frozen_string_literal: true

class TimeAbsent < ApplicationRecord
  belongs_to :schedule
  belongs_to :facilitator, polymorphic: true
end
