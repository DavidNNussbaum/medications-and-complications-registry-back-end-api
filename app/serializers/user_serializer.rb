class UserSerializer
    include JSONAPI::Serializer
    attributes :first_name, :id, :medications
  
    def medications
      self.object.medications.map do |m|
        {
          name_strength: m.name_strength,
          frequency: m.frequency,
          administration_route: m.administration_route,
          id: m.id,
        }
      end
    end
  end
  