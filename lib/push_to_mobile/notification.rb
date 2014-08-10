module PushToMobile
  class Notification
    attr_reader :message, :token, :service

    def initialize(message, token, service = :apns)
      self.service = service
      self.message = message
      self.token = token
    end

    def service=(service)
      raise ArgumentError.new('service must be a Symbol') unless service.is_a?(Symbol)
      raise ArgumentError.new("service value must equal :#{AVAILABLE_SERVICES.join(', :')}") unless AVAILABLE_SERVICES.include?(service)

      @service = service
    end

    def message=(message)
      raise ArgumentError.new('message must be a Hash') unless message.is_a?(Hash)

      @message = message
    end

    def token=(token)
      raise ArgumentError.new('token must be a String') unless token.is_a?(String)

      @token = token
    end

  end
end
