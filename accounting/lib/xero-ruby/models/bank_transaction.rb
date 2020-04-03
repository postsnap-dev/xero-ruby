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
  class BankTransaction
    # See Bank Transaction Types
    attr_accessor :type

    attr_accessor :contact

    # See LineItems
    attr_accessor :line_items

    attr_accessor :bank_account

    # Boolean to show if transaction is reconciled
    attr_accessor :is_reconciled

    # Date of transaction – YYYY-MM-DD
    attr_accessor :date

    # Reference for the transaction. Only supported for SPEND and RECEIVE transactions.
    attr_accessor :reference

    attr_accessor :currency_code

    # Exchange rate to base currency when money is spent or received. e.g.0.7500 Only used for bank transactions in non base currency. If this isn’t specified for non base currency accounts then either the user-defined rate (preference) or the XE.com day rate will be used. Setting currency is only supported on overpayments.
    attr_accessor :currency_rate

    # URL link to a source document – shown as “Go to App Name”
    attr_accessor :url

    # See Bank Transaction Status Codes
    attr_accessor :status

    attr_accessor :line_amount_types

    # Total of bank transaction excluding taxes
    attr_accessor :sub_total

    # Total tax on bank transaction
    attr_accessor :total_tax

    # Total of bank transaction tax inclusive
    attr_accessor :total

    # Xero generated unique identifier for bank transaction
    attr_accessor :bank_transaction_id

    # Xero generated unique identifier for a Prepayment. This will be returned on BankTransactions with a Type of SPEND-PREPAYMENT or RECEIVE-PREPAYMENT
    attr_accessor :prepayment_id

    # Xero generated unique identifier for an Overpayment. This will be returned on BankTransactions with a Type of SPEND-OVERPAYMENT or RECEIVE-OVERPAYMENT
    attr_accessor :overpayment_id

    # Last modified date UTC format
    attr_accessor :updated_date_utc

    # Boolean to indicate if a bank transaction has an attachment
    attr_accessor :has_attachments

    # A string to indicate if a invoice status
    attr_accessor :status_attribute_string

    # Displays array of validation error messages from the API
    attr_accessor :validation_errors

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
        :'type' => :'Type',
        :'contact' => :'Contact',
        :'line_items' => :'LineItems',
        :'bank_account' => :'BankAccount',
        :'is_reconciled' => :'IsReconciled',
        :'date' => :'Date',
        :'reference' => :'Reference',
        :'currency_code' => :'CurrencyCode',
        :'currency_rate' => :'CurrencyRate',
        :'url' => :'Url',
        :'status' => :'Status',
        :'line_amount_types' => :'LineAmountTypes',
        :'sub_total' => :'SubTotal',
        :'total_tax' => :'TotalTax',
        :'total' => :'Total',
        :'bank_transaction_id' => :'BankTransactionID',
        :'prepayment_id' => :'PrepaymentID',
        :'overpayment_id' => :'OverpaymentID',
        :'updated_date_utc' => :'UpdatedDateUTC',
        :'has_attachments' => :'HasAttachments',
        :'status_attribute_string' => :'StatusAttributeString',
        :'validation_errors' => :'ValidationErrors'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'String',
        :'contact' => :'Contact',
        :'line_items' => :'Array<LineItem>',
        :'bank_account' => :'Account',
        :'is_reconciled' => :'Boolean',
        :'date' => :'Date',
        :'reference' => :'String',
        :'currency_code' => :'CurrencyCode',
        :'currency_rate' => :'Float',
        :'url' => :'String',
        :'status' => :'String',
        :'line_amount_types' => :'LineAmountTypes',
        :'sub_total' => :'Float',
        :'total_tax' => :'Float',
        :'total' => :'Float',
        :'bank_transaction_id' => :'String',
        :'prepayment_id' => :'String',
        :'overpayment_id' => :'String',
        :'updated_date_utc' => :'DateTime',
        :'has_attachments' => :'Boolean',
        :'status_attribute_string' => :'String',
        :'validation_errors' => :'Array<ValidationError>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::BankTransaction` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::BankTransaction`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'contact')
        self.contact = attributes[:'contact']
      end

      if attributes.key?(:'line_items')
        if (value = attributes[:'line_items']).is_a?(Array)
          self.line_items = value
        end
      end

      if attributes.key?(:'bank_account')
        self.bank_account = attributes[:'bank_account']
      end

      if attributes.key?(:'is_reconciled')
        self.is_reconciled = attributes[:'is_reconciled']
      end

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'reference')
        self.reference = attributes[:'reference']
      end

      if attributes.key?(:'currency_code')
        self.currency_code = attributes[:'currency_code']
      end

      if attributes.key?(:'currency_rate')
        self.currency_rate = attributes[:'currency_rate']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'line_amount_types')
        self.line_amount_types = attributes[:'line_amount_types']
      end

      if attributes.key?(:'sub_total')
        self.sub_total = attributes[:'sub_total']
      end

      if attributes.key?(:'total_tax')
        self.total_tax = attributes[:'total_tax']
      end

      if attributes.key?(:'total')
        self.total = attributes[:'total']
      end

      if attributes.key?(:'bank_transaction_id')
        self.bank_transaction_id = attributes[:'bank_transaction_id']
      end

      if attributes.key?(:'prepayment_id')
        self.prepayment_id = attributes[:'prepayment_id']
      end

      if attributes.key?(:'overpayment_id')
        self.overpayment_id = attributes[:'overpayment_id']
      end

      if attributes.key?(:'updated_date_utc')
        self.updated_date_utc = attributes[:'updated_date_utc']
      end

      if attributes.key?(:'has_attachments')
        self.has_attachments = attributes[:'has_attachments']
      else
        self.has_attachments = false
      end

      if attributes.key?(:'status_attribute_string')
        self.status_attribute_string = attributes[:'status_attribute_string']
      end

      if attributes.key?(:'validation_errors')
        if (value = attributes[:'validation_errors']).is_a?(Array)
          self.validation_errors = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @contact.nil?
        invalid_properties.push('invalid value for "contact", contact cannot be nil.')
      end

      if @line_items.nil?
        invalid_properties.push('invalid value for "line_items", line_items cannot be nil.')
      end

      if @bank_account.nil?
        invalid_properties.push('invalid value for "bank_account", bank_account cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["RECEIVE", "RECEIVE-OVERPAYMENT", "RECEIVE-PREPAYMENT", "SPEND", "SPEND-OVERPAYMENT", "SPEND-PREPAYMENT", "RECEIVE-TRANSFER", "SPEND-TRANSFER"])
      return false unless type_validator.valid?(@type)
      return false if @contact.nil?
      return false if @line_items.nil?
      return false if @bank_account.nil?
      status_validator = EnumAttributeValidator.new('String', ["AUTHORISED", "DELETED", "VOIDED"])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["RECEIVE", "RECEIVE-OVERPAYMENT", "RECEIVE-PREPAYMENT", "SPEND", "SPEND-OVERPAYMENT", "SPEND-PREPAYMENT", "RECEIVE-TRANSFER", "SPEND-TRANSFER"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["AUTHORISED", "DELETED", "VOIDED"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          contact == o.contact &&
          line_items == o.line_items &&
          bank_account == o.bank_account &&
          is_reconciled == o.is_reconciled &&
          date == o.date &&
          reference == o.reference &&
          currency_code == o.currency_code &&
          currency_rate == o.currency_rate &&
          url == o.url &&
          status == o.status &&
          line_amount_types == o.line_amount_types &&
          sub_total == o.sub_total &&
          total_tax == o.total_tax &&
          total == o.total &&
          bank_transaction_id == o.bank_transaction_id &&
          prepayment_id == o.prepayment_id &&
          overpayment_id == o.overpayment_id &&
          updated_date_utc == o.updated_date_utc &&
          has_attachments == o.has_attachments &&
          status_attribute_string == o.status_attribute_string &&
          validation_errors == o.validation_errors
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, contact, line_items, bank_account, is_reconciled, date, reference, currency_code, currency_rate, url, status, line_amount_types, sub_total, total_tax, total, bank_transaction_id, prepayment_id, overpayment_id, updated_date_utc, has_attachments, status_attribute_string, validation_errors].hash
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
