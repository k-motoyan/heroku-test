module HttpMethodConverter
  # Convert http request method to response status.
  #
  # @example Example
  #   >> Class.new{ include HttpMethodConverter }.new.method_success_status 'GET'
  #   => :ok
  #
  #   >> Class.new{ include HttpMethodConverter }.new.method_success_status 'PATCH'
  #   => :ok
  #
  #   >> Class.new{ include HttpMethodConverter }.new.method_success_status 'PUT'
  #   => :ok
  #
  #   >> Class.new{ include HttpMethodConverter }.new.method_success_status 'DELETE'
  #   => :ok
  #
  #   >> Class.new{ include HttpMethodConverter }.new.method_success_status 'POST'
  #   => :created
  #
  #   >> Class.new{ include HttpMethodConverter }.new.method_success_status 'other'
  #   => nil
  #
  # @param [String] method http request method.
  # @return [Symbol] http response status.
  def method_success_status(method)
    case method.upcase
    when 'GET', 'PATCH', 'PUT', 'DELETE' then :ok
    when 'POST' then :created
    end
  end
end
