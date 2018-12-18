class MessageHistory

  attr_reader :message_history

  def initialize
    @message_history = []
  end

  def add_message(message)
    @message_history << { 'text' => message.text, 'time' => message.time }
  end

end
