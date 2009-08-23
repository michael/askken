module ResourcesHelper
  def resource_json(resource)
    response = {
      :id => resource.id,
  	  :name => resource.name,
  	  :attributes => []
    }
    
    resource.attributes.each do |a|
      attribute = {
        :id => a.property.id.to_s,
        :name => a.property.name.to_s,
        :values => []
      }
      value_count = 0
      if a.property.object_type? && a.values.length>=1 # && a.values.length<10
        a.values.each do |v|
          value = {
            :id => v.id,
            :name => v.name
          }
          
          if (v.name != "")
            attribute[:values] << value if value_count <= 20
            value_count += 1
          end
        end
      end
      response[:attributes] << attribute if a.property.object_type? && a.values.length>=1 && a.property.type.id != "/common/topic" # && a.values.length<10
    end
    response
  end
end