require 'message'

describe Message do

  before do
    Timecop.freeze(Time.local(2018,12,18,15,38,0))
  end

  after do
    Timecop.return
  end

  subject(:message) { Message.new(msg) }
  let(:msg) { 'First message' }
  # let(:time) {  }

  describe 'return a message' do
    it 'returns a message' do
      expect(subject.text).to eq msg
    end
  end

  describe 'return a timestamp' do
    it 'returns the time' do
      expect(subject.time).to eq '2018-12-18 15:38:00 +0000'
    end
  end

end
