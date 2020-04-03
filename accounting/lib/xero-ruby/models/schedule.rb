=begin
#Accounting API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.0.7
Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'time'
require 'date'

module XeroRuby
  class Schedule
    # Integer used with the unit e.g. 1 (every 1 week), 2 (every 2 months)
    attr_accessor :period

    # One of the following - WEEKLY or MONTHLY
    attr_accessor :unit

    # Integer used with due date type e.g 20 (of following month), 31 (of current month)
    attr_accessor :due_date

    # the payment terms
    attr_accessor :due_date_type

    # Date the first invoice of the current version of the repeating schedule was generated (changes when repeating invoice is edited)
    attr_accessor :start_date

    # The calendar date of the next invoice in the schedule to be generated
    attr_accessor :next_scheduled_date

    # Invoice end date – only returned if the template has an end date set
    attr_accessor :end_date

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'period' => :'Period',
        :'unit' => :'Unit',
        :'due_date' => :'DueDate',
        :'due_date_type' => :'DueDateType',
        :'start_date' => :'StartDate',
        :'next_scheduled_date' => :'NextScheduledDate',
        :'end_date' => :'EndDate'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'period' => :'Integer',
        :'unit' => :'String',
        :'due_date' => :'Integer',
        :'due_date_type' => :'String',
        :'start_date' => :'Date',
        :'next_scheduled_date' => :'Date',
        :'end_date' => :'Date'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::Schedule` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::Schedule`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'period')
        self.period = attributes[:'period']
      end

      if attributes.key?(:'unit')
        self.unit = attributes[:'unit']
      end

      if attributes.key?(:'due_date')
        self.due_date = attributes[:'due_date']
      end

      if attributes.key?(:'due_date_type')
        self.due_date_type = attributes[:'due_date_type']
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.key?(:'next_scheduled_date')
        self.next_scheduled_date = attributes[:'next_scheduled_date']
      end

      if attributes.key?(:'end_date')
        self.end_date = attributes[:'end_date']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      unit_validator = EnumAttributeValidator.new('String', ["WEEKLY", "MONTHLY"])
      return false unless unit_validator.valid?(@unit)
      due_date_type_validator = EnumAttributeValidator.new('String', ["DAYSAFTERBILLDATE", "DAYSAFTERBILLMONTH", "OFCURRENTMONTH", "OFFOLLOWINGMONTH"])
      return false unless due_date_type_validator.valid?(@due_date_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unit Object to be assigned
    def unit=(unit)
      validator = EnumAttributeValidator.new('String', ["WEEKLY", "MONTHLY"])
      unless validator.valid?(unit)
        fail ArgumentError, "invalid value for \"unit\", must be one of #{validator.allowable_values}."
      end
      @unit = unit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] due_date_type Object to be assigned
    def due_date_type=(due_date_type)
      validator = EnumAttributeValidator.new('String', ["DAYSAFTERBILLDATE", "DAYSAFTERBILLMONTH", "OFCURRENTMONTH", "OFFOLLOWINGMONTH"])
      unless validator.valid?(due_date_type)
        fail ArgumentError, "invalid value for \"due_date_type\", must be one of #{validator.allowable_values}."
      end
      @due_date_type = due_date_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          period == o.period &&
          unit == o.unit &&
          due_date == o.due_date &&
          due_date_type == o.due_date_type &&
          start_date == o.start_date &&
          next_scheduled_date == o.next_scheduled_date &&
          end_date == o.end_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [period, unit, due_date, due_date_type, start_date, next_scheduled_date, end_date].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(parse_date(value))
      when :Date
        Date.parse(parse_date(value))
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        XeroRuby.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

    # customized data_parser
    def parse_date(datestring)
      seconds_since_epoch = datestring.scan(/[0-9]+/)[0].to_i / 1000.0
      return Time.at(seconds_since_epoch).to_s
    end
  end
end
