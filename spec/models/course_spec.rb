# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Course, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:workload) }
  it { is_expected.to validate_presence_of(:price) }

  it { is_expected.to validate_uniqueness_of(:name) }
  
  describe '#status' do
    let(:student) { create(:student) }
    let(:course) { create(:course) }

    context 'no exams' do
      it 'in_progress' do
        expect(course.status).to eq('in_progress')
      end
    end

    context 'all exams completed' do
      before do
        create(:exam, course: course, student: student)
      end

      it 'finished' do
        expect(course.status).to eq('finished')
      end
    end
  end
end
