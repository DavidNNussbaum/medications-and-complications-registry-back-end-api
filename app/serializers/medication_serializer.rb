class MedicationSerializer
    include JSONAPI::Serializer
    attributes :name_strength, :frequency, :administration_route, :complications, :id 
  
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
   
  
  