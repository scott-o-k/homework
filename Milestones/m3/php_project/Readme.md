# Milestone #3 PHP Project: Daniel's Super Duper Validator Testor

## Contents:
- [Description](#description)
- [State Details](#state-details)
- [Validation Details](#validation-details)
- [Implementation Suggestions](#implementation)

<a id="description"></a>
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
  - Each pair will consist of one dropdown box and one text box
- State 3: The request is a POST
  - For each pair of inputs the program will validate the input in the text field according to the "type" specified
  in the corresponding dropdown box and then output the results of the validation.

Your project **must** have these two files:
- super_validator.php: this will be the main "front-end" to your project which is hit by the client
- Validator.php: this file will contain the validation related class as described in the "Validation" section of this document.

Your project **may** contain additional files if you choose. This is not a hint that you **should** have other files. It is only an allowance to have other files if you feel that they are helpful.

As far as visual aspects are concerned, this is not a "pixel perfect" project. You have full flexibility in regards to what the page looks like. That said, this project is all about writing PHP code, so don't spend a lot of time on
visual aspects before your program is **fully** functional.

<a id="state-details"></a>  
## State Details:
### State #1:
In state #1, the request is a GET with no input parameters. Your program should respond  with a form that has:
- method set to "GET"
- one text field with a name of "num_fields".
- a submit button

The form will look like this:

![state 1](image01.png)

### State #2:
In state #2, the request is a GET and there is a "num_fields" parameter present. Your program should:
- validate that the num_fields parameter is a positive integer. If is not, your program should redisplay the state #1 form. You **may** include a message that indicates to the user that the input was not valid but this is **not** required.
- Assuming that num_fields is a positive integer, your program should respond with a form that:
  - has action set to this page **including the incoming num_fields parameter**
  - has method set to POST
  - has N **pairs** of inputs where N is the value of the num_fields parameter
  - Each pair of inputs will consist of:
    - one text field with a name of "text_N" (N is different for each pair)
    - one dropdown box with a name of "type_N" and these options:
      - email
      - username
      - password
      - phone
      - number

The form will look like this:

![state 2](image00.png)

### State #3:

In state #3, the request will be a POST and there will be:
- a num_fields **GET** parameter
- some number of **POST** inputs named "text_N" and "type_N" where N is in the range (1..num_fields)

Your program should:
- validate the num_fields GET parameter. If it is not a positive integer, display the State 1 form
- Assuming that num_fields is a valid integer:
  - For each pair (text_N, type_N), validate the text field (text_N) according to the validation rules for type_N
  - Recreate the same form from State 2 with these additions:
    - All of the dropdowns should have the values from the input pre-selected
    - For each text field:
      - If the text is valid your program will:
        - populate the text field with the input value
        - add some kind of CSS styling that indicates that the value is valid
      - If the text is **NOT** valid your program will: 
        - leave the text field blank and have an error message to its right that includes the erroneous value
        - add some kind of CSS styling that indicates that the value is **NOT** valid

The form will look like this:

![state 3](image02.png)

<a id="validation-details"></a>
## Validation Details

<a id="implementation"></a>
## Implementation Suggestions
      
      
  
