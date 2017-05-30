module RequestProxy
  extend ActiveSupport::Concern

  included do
    def proxy(request)
    end
  end
end
