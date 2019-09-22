# CSS (Cascading Stylesheets)

Besides HTML files most websites use CSS files to maintain the styling.
HTML structures the content of a website and CSS styles them.

The way CSS works is quite easy, if you understand the method behind it.
CSS uses rulesets to address curtain HTML elements in specific context.
This means you are styling HTML elements in general, rather than adapting a specific styling to every single HTML element.

**Note:** *If you are not familiar with the HTML syntax yet, reading the [WCC-HTML](./../WCC-HTML) could be a nice introduction for you.*

```html
<!DOCTYPE html>
<html>
  
  <!-- Machine readable information comes here -->
  <head>
    <title>Eco-friendliness that you can start right now</title>
  </head>
  
  <!-- Displayed content in the browser -->
  <body>
    
    <!-- Title of your website -->
    <header>
      <span>Electronical devices</span> · Eco-friendliness that you can start right now
    </header>
    <!-- Navigation through your Website -->
    <section>
      <!-- Title of the Navigation -->
      <header>
        Main Navigation
      </header>
      <nav>
        <!-- Link list of all Navigation Points -->
        <ul>
          <li>
            <a href="#">At Home</a>
            <!-- Sub Navigation -->
            <ul>
              <li>
                <a href="#">Electronical devices</a>
              </li>
              <li>
                <a href="#">Food & Beverage</a>
              </li>
               <li>
                <a href="#">Cosmetics</a>
              </li>
            </ul>
          </li>
          <li>
            <a href="#">At Work</a>
            <!-- Sub Navigation -->
          </li>
          <li>
            <a href="#">For Traveling</a>
            <!-- Sub Navigation -->
            <ul>
              <li>
                <a href="#">Carsharing</a>
              </li>
            </ul>
          </li>
          <li>
            <a href="#">For Transportation</a>
            <!-- Sub Navigation -->
            <ul>
              <li>
                <a href="#">Carsharing</a>
              </li>
            </ul>
          </li>
        </ul>
      </nav>
    </section>
    
    <main>
      
      <nav>
        <ul>
          <li>
            <a href="#">Eco-friendliness</a>
          </li>
          <li>
            <a href="#">At Home</a>
          </li>
          <li>Electronical devices</li>
        </ul>
      </nav>
      
      <h1>Eco-friendliness that you can start right now with your electronical devices</h1>
      <p></p>
      <p></p>
      <h2></h2>
      <p></p>
      <p></p>
      
      <footer>
        
      </footer>
      
    </main>
    
  </body>
</html>
```
