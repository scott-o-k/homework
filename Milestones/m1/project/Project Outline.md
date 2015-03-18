# Milestone 1: Project Outline

## Project: Business Website
Create a four-page website for a business including (Home, Contact, Browse, and Product). Follow the provided graphic design to accomplish the site's HTML and CSS. Each page should have a header and a footer (which is the same header/footer for all three pages). Take advantage of PHP includes so the header and footer are created once for the project and are included onto each of the three pages. Use background image from http://subtlepatterns.com/ for the background. 

## Browse Page
The browse page will list several products as links. Each link will have a GET variable indicating its numeric product ID and will pass this ID variable to the `product` page when clicked. For the numeric ID, use 1 for Mac, 2 for Ubuntu, and 3 for Windows. The product page will use `if` and `if-else` statements to determine which product was clicked. An output should be displayed which shows the name of the product clicked.

## Files that need to be created:
- index.php
- contact.php
- browse.php
- product.php
- header.php
- footer.php
- images/background.png
- css/styles.css

## Tips

Separate HTML form PHP logic as much as possible. All pages are PHP pages but the ones that have logic should have their PHP logic at the top of the page, then echos down in the HTML. For example:

```php
<?php

if ($_GET['foo'] == 'foo') {
  $output = 'Hello Foo';
} else {
  $output = 'Hello Bar';
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>

	<?php echo $output; ?>
	
</body>
</html>
```

Notice the PHP logic on top which creates a variable to be echoed into the correct place below. We can't fully separate HTML from PHP but this is good enough for now. This next example shows the incorrect way:

```php
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>

<?php

if ($_GET['foo'] == 'foo') {
  echo 'Hello Foo';
} else {
  echo 'Hello Bar';
}

?>
	
</body>
</html>
```

Even though they both produce the exact same output, we want to discourage this mixing of PHP logic into the HTML section of the file

Spacing makes things easier to read. Be sure to use spaces around your PHP requires for legibility

```php
<?php
// Logic
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>

	<?php require_once('header.php'); ?>
	
	<main>
	</main>
	
</body>
</html>
```
