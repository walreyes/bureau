module DisplayAttributesHelper
  def display_attribute resource_model, attribute, resource
    field_type = resource_model.attributes[attribute]
    field_type.new(resource[attribute]).displayable
  end
end