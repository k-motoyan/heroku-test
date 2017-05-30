class ApiController < ApplicationController
  include RequestProxy
  include HttpMethodConverter

  def index
    end_point = EndPoint.find_by http_method: EndPoint.http_method_to_number(request.request_method),
                                 path:        request.path_info[1, request.path_info.length]

    if end_point.nil? || end_point.proxyable
      proxy request
    else
      render raw:          end_point.response,
             content_type: 'application/json',
             status:       method_success_status(request.request_method)
    end
  end
end
