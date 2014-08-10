module PushToMobile
  # Generalized notification structure
  class Notification
    attr_reader :message, :token, :service

    # create a new notification
    def initialize(message, token, service = :apns)
      self.service = service
      self.message = message
      self.token = token
    end

    # save service to use to send notification
    #
    # @note raises ArgumentError if 'service' is not included in AVAILABLE_SERVICES
    # @param service [Symbol] service used to notify device (Must be included in AVAILABLE_SERVICE)
    # @return [Symbol] service used to notify device
    def service=(service)
      raise ArgumentError.new('service must be a Symbol') unless service.is_a?(Symbol)
      raise ArgumentError.new("service value must equal :#{AVAILABLE_SERVICES.join(', :')}") unless AVAILABLE_SERVICES.include?(service)

      @service = service
    end

    # save message to send for a nofication
    #
    # @note raise ArgumentError if 'message' is not a Hash
    # @param message [Hash] data to send to the service
    # @return [Hash] the data
    def message=(message)
      raise ArgumentError.new('message must be a Hash') unless message.is_a?(Hash)

      @message = message
    end

    # the the token for a notification
    #
    # @note raise ArgumentError if token is not a String
    # @param token [String] the token of a device
    # @return [String] the token
    def token=(token)
      raise ArgumentError.new('token must be a String') unless token.is_a?(String)

      @token = token
    end

  end
end
