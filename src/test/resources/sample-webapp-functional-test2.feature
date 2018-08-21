@SPRINT100
Feature: Item2 - Validate the web site pages
Navigate to the Test page.
Enter the values in two text boxes. 
Hit concatenate button to populate the result in the third textbox.
Validate the result populated is as expected.

  Scenario Outline: Test2 - Concatenate two strings in the Test page
    Given I am using app url within <browsertarget> browser to navigate to the Test page
    And I have entered <firststring> into the first text box
    And Then I have entered <secondstring> into the second text box
    When I press concatenate button
    Then the result should be <resultstring> on the third text box
    
  @SMOKE1
    Examples: 
      | browsertarget | firststring | secondstring | resultstring   |
      | ie            | uvw11        | xyz1         | uvw11xyz1     | 
      | chrome        | uvw12        | xyz1         | uvw12xyz1     | 
      | firefox       | uvw13        | xyz1         | uvw13xyz1     | 
  
  @SMOKE
    Examples: 
      | browsertarget  | firststring | secondstring | resultstring  | 
      | ie            | uvw14        | xyz1         | uvw14xyz1     | 
      | chrome        | uvw15        | xyz1         | uvw15xyz1     | 
      | firefox       | uvw16        | xyz1         | uvw16xyz1     |
  
  @FUNCTIONAL
    Examples: 
      | browsertarget  | firststring | secondstring | resultstring   | 
      | ie             | uvw21        | xyz2         | uvw21xyz2     | 
      | chrome         | uvw22        | xyz2         | uvw22xyz2     | 
      | ie             | uvw33        | xyz3         | uvw33xyz3     | 
      | chrome         | uvw34        | xyz3         | uvw34xyz3     | 
      | firefox        | uvw15        | xyz1         | uvw15xyz1     |

      
      
   

   
