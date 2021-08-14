# frozen_string_literal: true

class Admin < ApplicationRecord
  # Association
  has_one :user, as: :roleable
end
