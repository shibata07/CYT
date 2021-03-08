require "rails_helper"

RSpec.describe Weight do
  let!(:user) { FactoryBot.create(:user) }
  let!(:weight) { Weight.create(id: 1, value: 55, user_id: 1, when: 2021-03-07) }
  context "正しい情報が渡ってきた場合" do
    it "保存される" do
      expect(weight).to be_valid
    end
  end
  context "ユーザーの登録日が重複している場合" do
    let!(:weight1) { Weight.create(id: 1, value: 35, user_id: 1, when: 2021-03-07) }
    it "保存されない" do
      expect(weight1.errors[:when]).to include("has already been taken")
    end
  end
end