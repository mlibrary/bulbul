# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "React", type: :system do
  it "React test responds with 'Hello React!" do
    visit hello_path

    # From hello_controller.rb
    expect(page).to have_content "Hello, You"
    # From <%= javascript_pack_tag 'hello_react' %> in views/hello/show
    # and javascript/packs/hello_react.jsx
    expect(page).to have_content "Hello React!"
  end
end
