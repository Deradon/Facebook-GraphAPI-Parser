#require 'rubygems'
#require 'open-uri'
#require 'nokogiri'

#require 'core_ext'
#require 'parsed_object'


# Parsing the Facebook Graph-API
class GraphParser
  BASE_GRAPH_URL = "https://developers.facebook.com/docs/reference/api/"

  # Parsing the main GraphAPI page
  def parse_base
    doc = Nokogiri::HTML(open(BASE_GRAPH_URL))
    @graph_objects = []

    # Select all Graph Objects
    doc.css('h2#objects + div').each do |objects|
      objects.css(".page").each do |object|
        title = object.css(".title a").first.content
        url   = object.css(".title a").first.attributes["href"].content
        desc  = object.css(".snippet p").first.content
        @graph_objects << {
          :title => title,
          :url   => url,
          :desc  => desc
        }
      end
    end
    return parse_objects(@graph_objects)
  end

  # Parsing all given GraphObjects
  def parse_objects(objects)
    objects.each_index do |i|
      puts "Parsing #{objects[i][:url]} ..."
      objects[i][:klass] = parse_graph_object(objects[i][:url])
      puts "#{objects[i][:title]} parsed"
      puts ""
    end
    return objects
  end

  # Parsing a single GraphObject
  def parse_graph_object(url)
    doc = Nokogiri::HTML(open(url))

    parse_class_definition(doc)

    attributes  = parse_attributes(doc)
    @parsed_object.add_attributes( attributes )

    connections = parse_connections(doc)
    @parsed_object.add_connections( connections )

    connection_actions = parse_connection_actions(doc)

    return @parsed_object.to_hash
  end

  # Parsing for class_name and description
  def parse_class_definition(doc)
    class_name        = doc.css("h1").first.content
    class_description = doc.css(".bodyText p").first.content
    @parsed_object    = ParsedObject.new(class_name, class_description)
  end

  # Parsing for attributes
  def parse_attributes(doc)
    attributes = []
    doc.css(".bodyText table")[0].css("tr").each do |tr|
      tds = tr.css("td")
      next if tds.count < 4
      attributes << {
        :name        => tds[0].content,
        :description => tds[1].content,
        :permissions => tds[2].content,
        :returns     => tds[3].content,
      }
    end if doc.css(".bodyText table").count >= 1
    return attributes
  end

  # Parsing for connections of GraphObject
  def parse_connections(doc)
    connections = []
    doc.css(".bodyText table")[1].css("tr").each do |tr|
      tds = tr.css("td")
      next if tds.count < 4
      connections << {
        :name        => tds[0].content,
        :description => tds[1].content,
        :permissions => tds[2].content,
        :returns     => tds[3].content,
        :is_graph_object => is_graph_object?(tds[0].content)
      }
    end if doc.css(".bodyText table").count >= 2
    return connections
  end

  # Parsing for actions on connections
  def parse_connection_actions(doc)
    doc.css('.bodyText h2[id]').each do |node|
      connection = node.content
      handle_h2_contents(node.next_element, connection)
    end
  end

  # Handle connections
  # TODO: Refactor this ugly method
  def handle_h2_contents(node, connection, action=nil, comments=[])
    if node.nil? || node.name == "h2"
      @parsed_object.add_connection_action(connection, action, comments) if action
      return node
    end

    if node.name == "h3" and !action.nil?
      @parsed_object.add_connection_action(connection, action, comments)
    end

    if node.name == "h3"
      action   = node.content
      comments = []
    end

    comments << node.content.delete("\n") unless node.name == "h3"

    handle_h2_contents(node.next_element, connection, action, comments)
  end

  def is_graph_object?(obj)
    @graph_objects.each do |o|
      return true if o[:title] == obj.capitalize
      return true if o[:title] == obj.chop.capitalize
    end
    return false
  end

end

