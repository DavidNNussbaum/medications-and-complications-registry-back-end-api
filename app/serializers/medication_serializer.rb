class MedicationSerializer
    include JSONAPI::Serializer
    attributes :name_strength, :frequency, :administation_route, :complications, :id 
  
    attribute :name do |user|
      "#{user.first_name} #{user.last_name}"
    end
  
    def complications
      self.object.complications.map do |c|
        {
          complication_severity: c.complication_severity,
          complication_duration: c.complication_duration,
          complication_description: c.complication_description,
          completely_resolved: c.completely_resolved,
          medication_id: c.medication_id,
          user_id: c.user_id,
          id: c.id
        }
      end
    end
  end
   
  
  