# frozen_string_literal: true

class Classroom < ApplicationRecord
  # associations
  has_many :schedules, dependent: :delete_all
end
