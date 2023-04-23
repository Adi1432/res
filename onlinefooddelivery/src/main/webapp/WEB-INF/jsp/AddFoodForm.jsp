<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Food</title>
<style>
  /* Define CSS rules here */
  body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
  }
  input[type="text"] {
    padding: 8px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    font-size: 16px;
  }
  input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
  }
  input[type="submit"]:hover {
    background-color: #45a049;
  }
</style>
</head>
<body>

<form action="/addFood" method="post">
<input type="hidden" name="id" value="${id}"/>
<input type="text" name="resName" placeholder="resName"><br>
<input type="text" name="foodName" placeholder="foodName"><br>
<input type="text" name="price" placeholder="price"><br>
<input type="text" name="category" placeholder="category"><br>
<input type="text" name="description" placeholder="description"><br>
<input type="submit"  value="Add Food">
</form>


</body>
</html>
