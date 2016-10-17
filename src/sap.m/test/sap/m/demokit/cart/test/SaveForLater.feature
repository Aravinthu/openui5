Feature: Save a product for later

  Background:
    Given I start my App save for later activated
    When on home: I press on "The second category"
    When on the category: I press on "The first Product"
    When on the product: I add the displayed product to the cart
    When on the category: I go to the cart page
    When on the cart: I press on save for later for the first product

  Scenario: Save for later
    Then on the cart: I should see one product in my save for later list
    Then I should see an empty cart

  Scenario: Add back to cart
    When on the cart: I press on add back to cart for the first product

    Then on the cart: I should see the product in my cart
    Then I should see an empty save for later list
