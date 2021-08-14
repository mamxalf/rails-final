# frozen_string_literal: true

class Student < ApplicationRecord
  # Association
  has_one :user, as: :roleable
end
