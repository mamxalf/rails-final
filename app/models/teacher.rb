# frozen_string_literal: true

class Teacher < ApplicationRecord
  # Association
  has_one :user, as: :roleable
end
