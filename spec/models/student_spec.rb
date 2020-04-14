# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Student, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:surname) }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_presence_of(:phone_number) }

  it { is_expected.to validate_uniqueness_of(:email) }
end
