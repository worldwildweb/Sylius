@viewing_products
Feature: Viewing product reviews on product's details page
    In order to know other customer's opinion about product
    As a Customer
    I want to read product reviews on product page

    Background:
        Given the store has customer "Howard Phillips Lovecraft" with email "h.p.lovecraft@arkham.com"
        And the store has customer "Robert E. Howard" with email "robert.e.howard@conan.com"
        And the store has customer "J.R.R Tolkien" with email "jrr.tolkien@middle-earth.com"
        And the store has customer "Terry Pratchett" with email "sir.terry@pratchett.com"
        And the store has a product "Necronomicon"
        And this product has a review titled "Great book" and rated 5 added by customer "h.p.lovecraft@arkham.com"
        And this product has also a review titled "Scary and dark" and rated 4 added by customer "robert.e.howard@conan.com"
        And this product has also a review titled "Too gloomy" and rated 3 added by customer "jrr.tolkien@middle-earth.com"
        And this product has also a review titled "Classic" and rated 5 added by customer "sir.terry@pratchett.com"
        And I am a logged in customer

    @ui @todo
    Scenario: Viewing last 3 product reviews on product's details page
        When I check this product's details
        Then I should 3 product reviews
        And I should see review titled "Classic", "Too gloomy" and "Scary and dark"
        But I should not see review titled "Good book"
