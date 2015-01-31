class Class
  #Adapted from https://gist.github.com/johnclaus/959944
  def weak_attr_accessor(*my_accessors)
    my_accessors.each do |accessor|
      define_method(accessor) do
        instance_variable_get("@#{accessor}")
      end

      define_method("#{accessor}=") do |accessor_value|
        if accessor_value.nil?
          instance_variable_set("@#{accessor}", nil)
        else
          instance_variable_set("@#{accessor}", WeakRef.new(accessor_value))
        end
      end
    end
  end
end
