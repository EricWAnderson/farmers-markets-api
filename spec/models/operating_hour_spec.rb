require 'rails_helper'

RSpec.describe OperatingHour, type: :model do
  it { should belong_to :market}
end
