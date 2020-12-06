require 'bike'

describe Bike do

  it 'checks bike is working' do
    expect(subject).to respond_to :working?
  end
end
