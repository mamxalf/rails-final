# frozen_string_literal: true

class Schedule < ApplicationRecord
  belongs_to :course
  belongs_to :classroom
  belongs_to :room
end
