Feature: Filtering Books
    Scenario Outline:Filter the books from book stores
        Given I have following books in the stores
            | Title     | author      |
            | The Devil | Eric Larson |
            | The Lion  | c.s Lewis   |
            | The Beast | Eric Larson |
        When I filter the books by '<author>'
        Then I found <bookcount> books


        Examples:
            | author      | bookcount |
            | Eric Larson | 2         |
            | c.s Lewis   | 1         |



