# This is a demonstartion of a broken plugin
#
require "logstash/namespace"
require "logstash/outputs/base"
require "time"

class LogStash::Outputs::Broken < LogStash::Outputs::Base

  config_name "broken"
  plugin_status "beta"

  public
  def register
    time_str = Time.now.utc.iso8601
    json_data = event.to_json

    puts "This shouldn't break: #{time_str} Event: #{json_data}"
  end # def register

  public
  def receive(event)
    return unless output?(event)

    # TODO: do something here with the event
  end # def receive
end # class LogStash::Outputs::File

