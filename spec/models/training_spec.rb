require "rails_helper"

RSpec.describe "Training" do
  let!(:user) { FactoryBot.create(:user) }
  let!(:muscle) { FactoryBot.create(:muscle) }
  context "正しく情報が渡ってきた場合" do
    let(:training) { Training.create(
                      muscle_id: 1,
                      name: "スクワット",
                      body: "test",
                      user_id: 1
                      ) 
                    }
    it "保存できる" do
      expect(training).to be_valid
    end
  end

  context "情報に誤りがあった場合" do
    let(:training) { Training.create(
      muscle_id: 1,
      name: "",
      body: "test",
      user_id: 1
      ) 
    }
    it "保存できない" do
      expect(training.errors[:name]).to include("can't be blank")
    end
  end

end