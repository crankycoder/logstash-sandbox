# This is a demonstartion of a broken plugin
#
require "logstash/namespace"
require "logstash/outputs/base"
require "time"

class LogStash::Outputs::Broken < LogStash::Outputs::Base

  config_name "broken"
  plugin_status "beta"

  :wqpublic
  def register
    time_str = Time.now.utc.iso8601
    puts "This shouldn't break: #{time_str}"
  end # def register

  public
  def receive(event)
    return unless output?(event)

    # TODO: do something here with the event
  end # def receive
end # class LogStash::Outputs::File

