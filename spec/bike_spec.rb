require 'bike'

describe Bike do

  it 'checks bike is working' do
    expect(subject).to respond_to :working?
  end

  it 'responds to bike' do
    expect(subject).to respond_to :bike
  end

end
