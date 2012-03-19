require 'spec_helper'

describe "LayoutLinks" do
  it "find Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "")
  end

  it "find Contact page at '/'" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end

  it "find About page at '/'" do
    get '/about'
    response.should have_selector('title', :content => "About")
  end

  it "find Help page at '/'" do
    get '/help'
    response.should have_selector('title', :content => "Help")
  end
end
