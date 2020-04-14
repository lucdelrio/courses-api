# frozen_string_literal: true

require 'rails_helper'

RSpec.describe V1::CoursesController, type: :controller do
  let(:course) { create(:course) }

  describe 'DELETE #destroy' do
    it 'destroys the requested course' do
      expect do
        delete :destroy, params: { id: course.id }
      end.to change(Course, :count).by(0)
    end
  end
end
