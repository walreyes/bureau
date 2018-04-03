class Bureau::BaseController < ApplicationController
  include DisplayAttributesHelper
  helper_method :display_attribute
end