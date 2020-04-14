require 'rails_helper'

RSpec.describe TeachersController, type: :controller do

  let(:teacher) { create(:teacher) }

  describe "GET #index" do
    it "returns a success response" do
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested teacher" do
      expect {
        delete :destroy, params: {id: teacher.id}
      }.to change(Teacher, :count).by(0)
    end
  end
end
