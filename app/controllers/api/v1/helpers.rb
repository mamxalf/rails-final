# frozen_string_literal: true

module Api::V1::Helpers
  # result object
  def results message:, status:, data:, serializer:
    {
      message: message,
      status:  status,
      data:    ActiveModelSerializers::SerializableResource.new(data, each_serializer: serializer)
    }
  end
end
