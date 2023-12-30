
Feature: test for the home page

    Background: Define URL
         Given url 'https://api.realworld.io/api/'

    Scenario: Get all tags 
        Given path 'tags'
        When method Get
        Then status 200
        And match response.tags contains 'ipsum'

    Scenario: get 10 articles from the page
        Given param {limit=10, offset=0}
        Given path 'articles'
        When method get
        Then status 200