require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  it { should belong_to(:department) }
  it { should validate_presence_of(:department) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:created_by) }
end
