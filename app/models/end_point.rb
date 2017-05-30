class EndPoint < ApplicationRecord
  has_many :headers

  enum http_method: { _get: 0, _post: 1, _patch: 2, _delete: 3 }

  # Convert http request method to table column value.
  #
  # @example Example
  #   >> EndPoint.http_method_to_number 'get'
  #   => 0
  #
  #   >> EndPoint.http_method_to_number 'post'
  #   => 1
  #
  #   >> EndPoint.http_method_to_number 'patch'
  #   => 2
  #
  #   >> EndPoint.http_method_to_number 'put'
  #   => 2
  #
  #   >> EndPoint.http_method_to_number 'delete'
  #   => 3
  #
  #   >> EndPoint.http_method_to_number 'other'
  #   => nil
  #
  # @param [String] method http request method.
  # @return [Fixnum] table colum of `method` value.
  def self.http_method_to_number(method)
    case method.upcase
    when 'GET'          then http_methods[:_get]
    when 'POST'         then http_methods[:_post]
    when 'PATCH', 'PUT' then http_methods[:_patch]
    when 'DELETE'       then http_methods[:_delete]
    end
  end

  # Returns http request method string.
  #
  # @example Example
  #   >> EndPoint.new(http_method: EndPoint.http_methods[:_get]).http_method_string
  #   => 'GET'
  #
  #   >> EndPoint.new(http_method: EndPoint.http_methods[:_post]).http_method_string
  #   => 'POST'
  #
  #   >> EndPoint.new(http_method: EndPoint.http_methods[:_patch]).http_method_string
  #   => 'PATCH'
  #
  #   >> EndPoint.new(http_method: EndPoint.http_methods[:_delete]).http_method_string
  #   => 'DELETE'
  #
  #   >> EndPoint.new.http_method_string
  #   => nil
  #
  # @return [String] http request method string.
  def http_method_string
    case http_method&.to_sym
    when :_get    then 'GET'
    when :_post   then 'POST'
    when :_patch  then 'PATCH'
    when :_delete then 'DELETE'
    end
  end
end
