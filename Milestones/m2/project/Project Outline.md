# Milestone 2: Project Outline

## Project: Business Website
Continue building upon the previous project to make it more complex with your new technical skills. 
Product selection with a form
In the last project, users selected their product with a link. This time use a form with the following fields
- Dropdown field with options for products
- Input field for quantity

## PHP
Store your product inventory as an indexed array in it's own file called products.php (this will be the only additional file needed from the last project). Then on your product output page (product.php), instead of using if-else statements for every product in your inventory, use the GET variable from the form to determine which product name should be outputted. The output should look as follows when the user chooses 5 Macs from the form:

`You want to order 5 Mac`

Each product should output a message similar to this with the quantity being dynamically built from the user's input. However, there's also another rule: If the user orders more than 7 mac, the user should be presented with this message:

`You can't order over 7 Mac`

## CSS
With the new CSS, be sure to do the following:
1. Turn the once `<div>` for the logo into a link. Make the link point to the home page
2. Import `Lobster` and `Lato` fonts from Google Fonts to use
3. Incorporate `Normalize.css`
4. Use `background-size: cover` for the background image
