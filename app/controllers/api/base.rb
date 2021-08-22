# frozen_string_literal: true

class Api::Base < Grape::API
  mount Api::V1::Base
end
