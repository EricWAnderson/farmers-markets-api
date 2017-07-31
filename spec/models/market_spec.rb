require 'rails_helper'

RSpec.describe Market, type: :model do
  it { should have_one(:address).dependent(:destroy) }
  it { should delegate_method(:street).to(:address) }
  it { should delegate_method(:city).to(:address) }
  it { should delegate_method(:state).to(:address) }
  it { should delegate_method(:zip).to(:address) }
end
