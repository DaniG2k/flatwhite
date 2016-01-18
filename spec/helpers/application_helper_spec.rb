require 'rails_helper'

RSpec.describe ApplicationHelper, :type => :helper do
  include AbstractController::Translation

  describe "#title" do
    it "returns nil when no parts present" do
      expect(view.content_for(:title)).to be_nil
    end

    it "generates a title with page name" do
      view.title('About')
      expect(view.content_for(:title)).to eq("About - #{I18n.t(:website)}")
    end
  end

  describe "#set_html_lang" do
    it 'returns the current locale as a string' do
      expect(view.set_html_lang).to eq('en')
    end
  end
end