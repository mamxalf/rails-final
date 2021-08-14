# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Admin, type: :model do
  let(:subject) { described_class.new }
  let(:column_names) { %w[id created_at updated_at] }

  describe 'test model Admin' do
    context 'given valid attribute' do
      it 'should be valid with valid attributes' do
        expect(subject).to be_valid
      end

      it 'should be valid column attributes' do
        expect(described_class.column_names - column_names).to eq([])
      end
    end
  end
end
