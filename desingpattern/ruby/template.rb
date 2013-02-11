class TemplateWebScript
  def pre_method; raise end
  def do_method; raise end
  def post_method; raise end
  def execute
    pre_method
    do_method
    post_method
  end
end

class WebScript < TemplateWebScript
  def pre_method
    puts "do pre_method"
  end
  def do_method
    puts "do do_method"
  end
  def post_method
    puts "do post_method"
  end
end

w = WebScript.new
w.execute
