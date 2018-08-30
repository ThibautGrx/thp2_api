describe Thp2ApiTg::Lessons, :vcr do
  def client
    Thp2ApiTg::Client.new(username: "tibog", password: "12345678", url: "http://0.0.0.0:3000")
  end

  subject do
    client.lessons
  end
  describe "#all" do
    it "returns all the lessons" do
      expect(subject.all.data["lessons"]).to eq([])
    end
  end
end
