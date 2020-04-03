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
  class TenNinteyNineContact
    # Box 1 on 1099 Form
    attr_accessor :box1

    # Box 2 on 1099 Form
    attr_accessor :box2

    # Box 3 on 1099 Form
    attr_accessor :box3

    # Box 4 on 1099 Form
    attr_accessor :box4

    # Box 5 on 1099 Form
    attr_accessor :box5

    # Box 6 on 1099 Form
    attr_accessor :box6

    # Box 7 on 1099 Form
    attr_accessor :box7

    # Box 8 on 1099 Form
    attr_accessor :box8

    # Box 9 on 1099 Form
    attr_accessor :box9

    # Box 10 on 1099 Form
    attr_accessor :box10

    # Box 11 on 1099 Form
    attr_accessor :box11

    # Box 13 on 1099 Form
    attr_accessor :box13

    # Box 14 on 1099 Form
    attr_accessor :box14

    # Contact name on 1099 Form
    attr_accessor :name

    # Contact Fed Tax ID type
    attr_accessor :federal_tax_id_type

    # Contact city on 1099 Form
    attr_accessor :city

    # Contact zip on 1099 Form
    attr_accessor :zip

    # Contact State on 1099 Form
    attr_accessor :state

    # Contact email on 1099 Form
    attr_accessor :email

    # Contact address on 1099 Form
    attr_accessor :street_address

    # Contact tax id on 1099 Form
    attr_accessor :tax_id

    # Contact contact id
    attr_accessor :contact_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'box1' => :'Box1',
        :'box2' => :'Box2',
        :'box3' => :'Box3',
        :'box4' => :'Box4',
        :'box5' => :'Box5',
        :'box6' => :'Box6',
        :'box7' => :'Box7',
        :'box8' => :'Box8',
        :'box9' => :'Box9',
        :'box10' => :'Box10',
        :'box11' => :'Box11',
        :'box13' => :'Box13',
        :'box14' => :'Box14',
        :'name' => :'Name',
        :'federal_tax_id_type' => :'FederalTaxIDType',
        :'city' => :'City',
        :'zip' => :'Zip',
        :'state' => :'State',
        :'email' => :'Email',
        :'street_address' => :'StreetAddress',
        :'tax_id' => :'TaxID',
        :'contact_id' => :'ContactId'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'box1' => :'Float',
        :'box2' => :'Float',
        :'box3' => :'Float',
        :'box4' => :'Float',
        :'box5' => :'Float',
        :'box6' => :'Float',
        :'box7' => :'Float',
        :'box8' => :'Float',
        :'box9' => :'Float',
        :'box10' => :'Float',
        :'box11' => :'Float',
        :'box13' => :'Float',
        :'box14' => :'Float',
        :'name' => :'String',
        :'federal_tax_id_type' => :'String',
        :'city' => :'String',
        :'zip' => :'String',
        :'state' => :'String',
        :'email' => :'String',
        :'street_address' => :'String',
        :'tax_id' => :'String',
        :'contact_id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::TenNinteyNineContact` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::TenNinteyNineContact`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'box1')
        self.box1 = attributes[:'box1']
      end

      if attributes.key?(:'box2')
        self.box2 = attributes[:'box2']
      end

      if attributes.key?(:'box3')
        self.box3 = attributes[:'box3']
      end

      if attributes.key?(:'box4')
        self.box4 = attributes[:'box4']
      end

      if attributes.key?(:'box5')
        self.box5 = attributes[:'box5']
      end

      if attributes.key?(:'box6')
        self.box6 = attributes[:'box6']
      end

      if attributes.key?(:'box7')
        self.box7 = attributes[:'box7']
      end

      if attributes.key?(:'box8')
        self.box8 = attributes[:'box8']
      end

      if attributes.key?(:'box9')
        self.box9 = attributes[:'box9']
      end

      if attributes.key?(:'box10')
        self.box10 = attributes[:'box10']
      end

      if attributes.key?(:'box11')
        self.box11 = attributes[:'box11']
      end

      if attributes.key?(:'box13')
        self.box13 = attributes[:'box13']
      end

      if attributes.key?(:'box14')
        self.box14 = attributes[:'box14']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'federal_tax_id_type')
        self.federal_tax_id_type = attributes[:'federal_tax_id_type']
      end

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.key?(:'zip')
        self.zip = attributes[:'zip']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'street_address')
        self.street_address = attributes[:'street_address']
      end

      if attributes.key?(:'tax_id')
        self.tax_id = attributes[:'tax_id']
      end

      if attributes.key?(:'contact_id')
        self.contact_id = attributes[:'contact_id']
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
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          box1 == o.box1 &&
          box2 == o.box2 &&
          box3 == o.box3 &&
          box4 == o.box4 &&
          box5 == o.box5 &&
          box6 == o.box6 &&
          box7 == o.box7 &&
          box8 == o.box8 &&
          box9 == o.box9 &&
          box10 == o.box10 &&
          box11 == o.box11 &&
          box13 == o.box13 &&
          box14 == o.box14 &&
          name == o.name &&
          federal_tax_id_type == o.federal_tax_id_type &&
          city == o.city &&
          zip == o.zip &&
          state == o.state &&
          email == o.email &&
          street_address == o.street_address &&
          tax_id == o.tax_id &&
          contact_id == o.contact_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [box1, box2, box3, box4, box5, box6, box7, box8, box9, box10, box11, box13, box14, name, federal_tax_id_type, city, zip, state, email, street_address, tax_id, contact_id].hash
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
