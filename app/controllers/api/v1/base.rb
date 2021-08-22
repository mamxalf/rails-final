# frozen_string_literal: true

require 'grape-swagger'

class Api::V1::Base < Grape::API
  mount Api::V1::Rooms

  # Swagger Docs
  add_swagger_documentation(
    api_version:             'v1',
    hide_documentation_path: true,
    mount_path:              '/api/v1/doc',
    hide_format:             true
  )
end
