module Bureau
  module ApplicationHelper
    def show_value(type, info)
      type.show(info).html_safe
    end
  end
end