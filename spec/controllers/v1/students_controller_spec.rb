# frozen_string_literal: true

require 'rails_helper'

RSpec.describe V1::StudentsController, type: :controller do
  let(:student) { create(:student) }

  describe 'DELETE #destroy' do
    it 'destroys the requested student' do
      expect do
        delete :destroy, params: { id: student.id }
      end.to change(Student, :count).by(0)
    end
  end
end
