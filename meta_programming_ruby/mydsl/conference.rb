require 'time'

class CalendarEvent
  def initialize(title)
    @title = title
  end

  def on(date); @date = Date.parse(date); end

  def starts(s_time); @starts_at = Time.parse(s_time); end

  def ends(e_time); @ends_at = Time.parse(e_time); end

  def users(us); @attendees = us; end

  def to_s
    s = @date.strftime('%Y/%m/%d')
    s << "\t"
    s << @starts_at.strftime('%H:%M')
    s << "\t"
    s << @ends_at.strftime('%H:%M')
    s << "\t"
    s << @title
    s << "\t"
    s << @attendees.join(',')
    s
  end

  attr_accessor :title, :date, :starts_at, :ends_at, :attendees
end

def schedule(title, &block)
  ce = CalendarEvent.new(title)
  ce.instance_eval(&block)
  puts ce
end

load File.expand_path(ARGV[0])
