# frozen_string_literal: true

require 'rails_helper'

RSpec.describe V1::TeachersController, type: :controller do
  let(:teacher) { create(:teacher) }

  describe 'DELETE #destroy' do
    it 'destroys the requested teacher' do
      expect do
        delete :destroy, params: { id: teacher.id }
      end.to change(Teacher, :count).by(0)
    end
  end
end
