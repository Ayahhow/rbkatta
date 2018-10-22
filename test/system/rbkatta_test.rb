require "application_system_test_case"

class RbkattaTest < ApplicationSystemTestCase
  setup do
    @rbkattum = rbkatta(:one)
  end

  test "visiting the index" do
    visit rbkatta_url
    assert_selector "h1", text: "Rbkatta"
  end

  test "creating a Rbkattum" do
    visit rbkatta_url
    click_on "New Rbkattum"

    fill_in "Already", with: @rbkattum.already
    fill_in "Comment", with: @rbkattum.comment
    fill_in "Rbkatta", with: @rbkattum.rbkatta
    fill_in "Time", with: @rbkattum.time
    fill_in "User", with: @rbkattum.user
    click_on "Create Rbkattum"

    assert_text "Rbkattum was successfully created"
    click_on "Back"
  end

  test "updating a Rbkattum" do
    visit rbkatta_url
    click_on "Edit", match: :first

    fill_in "Already", with: @rbkattum.already
    fill_in "Comment", with: @rbkattum.comment
    fill_in "Rbkatta", with: @rbkattum.rbkatta
    fill_in "Time", with: @rbkattum.time
    fill_in "User", with: @rbkattum.user
    click_on "Update Rbkattum"

    assert_text "Rbkattum was successfully updated"
    click_on "Back"
  end

  test "destroying a Rbkattum" do
    visit rbkatta_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rbkattum was successfully destroyed"
  end
end
