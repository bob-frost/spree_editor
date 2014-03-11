require 'spec_helper'

feature "Rich Editor Settings", js: true do

  stub_authorization!

  before do
    SpreeEditor::Config[:current_editor] = 'CKEditor'
  end

  context "visiting editor settings" do

    it "should have the right content" do
      visit spree.admin_editor_settings_path
      within 'h1' do
        page.should have_content("Rich Editor")
      end
      within 'table' do
        page.should have_content('product_description page_body')
      end
    end

  end

end
