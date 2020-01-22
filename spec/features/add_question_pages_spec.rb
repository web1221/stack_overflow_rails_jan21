require 'rails_helper'


describe "the add a question process" do
  before(:each) do
    visit signup_path
    fill_in 'Email', :with => 'ela@v.com'
    fill_in 'Password', :with => 'cats'
    fill_in 'Password confirmation', :with => 'cats'
    click_on 'Sign Up'
    click_on 'Sign out'
    click_on 'Sign-in'
    fill_in 'Email', :with => 'ela@v.com'
    fill_in 'Password', :with => 'cats'
    click_on 'Sign in'
  end

  it "adds a new question" do
    visit questions_path
    click_link 'Create new question'
    fill_in 'User question', :with => 'This is a question'
    click_on 'Create Question'
    expect(page).to have_content 'Question successfully added!'
    expect(page).to have_content 'This is a question'
  end

  it "gives an error when no question is entered" do
    visit new_question_path
    click_on 'Create Question'
    expect(page).to have_content "User question can't be blank"
  end

  it "allows you to edit a question" do
    visit questions_path
    click_link 'Create new question'
    fill_in 'User question', :with => 'This is a question'
    click_on 'Create Question'
    click_on 'This is a question'
    click_on 'Edit'
    fill_in 'User question', :with => 'This isnt a question'
    click_on 'Update Question'
    expect(page).to have_content 'This isnt a question'
  end

  it "gives an error when no question is entered" do
    visit questions_path
    click_link 'Create new question'
    fill_in 'User question', :with => 'This is a question'
    click_on 'Create Question'
    click_on 'This is a question'
    click_on 'Edit'
    fill_in 'User question', :with => ''
    click_on 'Update Question'
    expect(page).to have_content "User question can't be blank"
  end

  it "deletes a question" do
    visit questions_path
    click_link 'Create new question'
    fill_in 'User question', :with => 'This is a question'
    click_on 'Create Question'
    click_on 'This is a question'
    click_on 'Delete question'
    expect(page).to have_content "There are no questions yet."
  end


end
