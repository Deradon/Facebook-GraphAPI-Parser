require 'erb'

class MyGenerator

  def initialize(template, output, klass={})
    @klass = klass
    @template = template
    @output_path = output
  end

  def run(save_to)
    content = render("templates/#{@template}")
    save_to_file(content, save_to)
  end

  def render(template=nil)
    template += ".erb" unless template.end_with?(".erb")
    ERB.new(File.read(template), nil, "<>").result(binding)
  end

  def save_to_file(content, file_name)
    Dir.mkdir(@output_path) unless File.directory?(@output_path)
    aFile = File.new(file_name, "w")
    aFile.write(content)
    aFile.close
  end
end

