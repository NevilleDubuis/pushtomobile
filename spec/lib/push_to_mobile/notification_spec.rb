require 'spec_helper'

describe PushToMobile::Notification do
  subject { PushToMobile::Notification.new({}, 'a_token', :apns) }

  it { should respond_to(:message) }
  it { should respond_to(:token) }
  it { should respond_to(:service) }

  describe 'service=' do
    it 'should raise an error if parameter is not a Symbol' do
      expect {
        subject.service = 'apns'
      }.to raise_error(ArgumentError, 'service must be a Symbol')
    end

    it 'should raise an error if parameter is a symbol but not match available service' do
      expect {
        subject.service = :ios
      }.to raise_error(ArgumentError, 'service value must equal :apns, :gcm')
    end

    it 'should register if is in authorized values' do
      service = :gcm

      expect {
        subject.service = service
      }.to_not raise_error

      expect(subject.instance_variable_get('@service')).to eql(service)
    end
  end

  describe 'message=' do
    it 'should raise an error if message is not a Hash' do
      expect {
        subject.message = 'the message to send'
      }.to raise_error(ArgumentError, 'message must be a Hash')
    end

    it 'should register value if it\' valid' do
      message = {alert: 'a message'}

      expect {
        subject.message = message
      }.to_not raise_error

      expect(subject.instance_variable_get('@message')).to eql(message)
    end
  end

  describe 'token=' do
    it 'should raise an error if token is not a string' do
      expect {
        subject.token = ['token is not in  Array']
      }.to raise_error(ArgumentError, 'token must be a String')
    end

    it 'should register value if it\' valid' do
      token = 'osfskdfhsldfjésdfkesdkf'

      expect {
        subject.token = token
      }.to_not raise_error

      expect(subject.instance_variable_get('@token')).to eql(token)
    end
  end

end
