class ApplicationService
  class << self
    protected

    def convert(objects, options)
      nil if objects.nil?
      if objects.class.superclass == ActiveRecord::Relation && objects.length
        objects.map { |object| convert_object(object, options) }
      else
        convert_object(objects, options)
      end
    end

    def convert_object(object, options)
      object
    end
  end
end
