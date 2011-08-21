class ParsedObject

  def initialize(class_name=nil, class_description=nil)
    @class_name         = class_name
    @class_description  = class_description
    @attributes         = []
    @connections        = []
    @connection_actions = []
  end

  def add_attributes( given_attributes )
    given_attributes.each do |a|
      comments = []
      comments << a[:description].delete("\n")
      comments << "Permissions: " + a[:permissions].delete("\n")
      comments << "Returns: " + a[:returns].delete("\n")
      @attributes << {:name => a[:name], :comment => comments} unless a[:name] == "Name"
    end
  end

  def add_connections( given_connections )
    given_connections.each do |c|
      comments = []
      comments << c[:description].delete("\n")
      comments << "Permissions: " + c[:permissions].delete("\n")
      comments << "Returns: " + c[:returns].delete("\n")
      @connections << {:name => c[:name], :comment => comments} unless c[:name] == "Name"
    end
  end

  def add_connection_action(connection, action, comments)
    @connection_actions << {
      :action => action,
      :connection => connection,
      :name => "#{action}_#{connection}".downcase,
      :comment => comments
    }
  end

  def to_hash
    {
      :comment => [@class_description],
      :name => @class_name,
      :attributes => @attributes,
      :connections => @connections,
      :connection_actions => @connection_actions || []
    }
  end

end

