require 'message_history'

describe MessageHistory do

  subject(:message_history) { described_class.new }
  let(:message1) { double :message, text: 'First message', time: '2018-12-18 15:38:00 +0000' }
  let(:message2) { double :message, text: 'Second message', time: '2018-12-18 15:40:00 +0000' }

  describe 'message history' do
    it 'adds new message to repository' do
      expect(subject.add_message(message1)).to eq [{ 'text' => message1.text, 'time' => message1.time }]
    end

    it 'shows all messages' do
      subject.add_message(message1)
      subject.add_message(message2)
      expect(subject.message_history).to eq [{ 'text' => message1.text, 'time' => message1.time }, { 'text' => message2.text, 'time' => message2.time }]
    end
  end

end
