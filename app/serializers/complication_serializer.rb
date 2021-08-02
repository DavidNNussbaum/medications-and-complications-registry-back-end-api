class ComplicationSerializer
    include JSONAPI::Serializer
    attributes :complication_severity, :complication_duration, :complication_description, :completely_resolved, :medication_id, :user_id, :id
  
  end
   