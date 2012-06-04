Feature: User views dashboard
  As a user
  In order to get updates from followed users
  I want to see shouts on my dashboard

  Scenario: User can see followed user shouts on dashboard
    Given the following users exist:
      | email                     |
      | follower@example.com      |
      | followed_user@example.com |
    And the following shouts exist:
      | body            | user                             | created at |
      | Hello Wombat    | email: followed_user@example.com | 2011-5-3   |
      | Hello Wallaby   | email: follower@example.com      | 2011-1-3   |
      | Hello Wobbegong | email: follower@example.com      | 2011-10-3  |
    And "follower@example.com" is following "followed_user@example.com"
    And I am signed in as "follower@example.com"
    When I am on the dashboard
    Then I can see the following timeline:
      | Hello Wobbegong |
      | Hello Wombat    |
      | Hello Wallaby   |
