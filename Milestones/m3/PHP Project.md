# Milestone #3 PHP Project: Daniel's Super Duper Validator Testor


## Description:
In this project you will build upon what you've learned about forms and building HTML elements dynamically. In
addition, you will employ the use object-oriented classes and regular expressions to implement a set of validators.

You will build a page that tests any number of inputs against a set of input validators. The program will have
three different states:
- State 1: The request is a GET and there is no user input
  - The program will respond with a form (method="GET") that prompts the user to enter a number
- State 2: The request is a GET and there is an input for the number of fields
  - The program will respond with a form (method="POST") that has N **pairs** of input fields where N is
  the number_of_fields input.
  - Each pair will consist of one dropdown box and one text box (more details below)
- State 3: The request is a POST
  - For each pair of inputs the program will validate the input in the text field according to the "type" specified
  in the corresponding dropdown box and then output the results of the validation.
  
  
## Details:
### State #1:


### State #2:


### State #3:


  - The program will re-create the same form from State 2 with these additions:
    - The dropdown boxes will have the values from the input preselected
    - If the text input is valid:
      - The text fields will be populated with the values from the input
      - The text fields will have some kind of CSS styling that indicates successful validation
    - If the text input is NOT valid:
      - The text field will be blank and have an error message to its right that explains the error and includes
      the erroneous input
      - The text field will have some kind of CSS styling that indicates unsuccessful validation
      
      
  
