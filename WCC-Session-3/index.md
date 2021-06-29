# WCC Session 3

This session will be a supervised hands-on of manipulating any webpage through a built-in [JavaScript](../WCC-Glossary/#javascript-js) [console](../WCC-Glossary/#console).
Most modern web browser do have such a console, which allows you to execute JS code on [runtime](../WCC-Glossary/#runtime) of the web application you have just opened.

## Opening the Developer Tools

Any modern web browser allows to manipulate the Document Object Model (DOM) which represents all parts of the web application or website as a tree.
You're having parent-child relationships inside the HTML code and rules for the styling with CSS and logic implemented inside the JS code.
The latter we want to tackle on this session.

So, open up the [developer mode](../WCC-Glossary#developer-tools) of your browser by hitting <kbd>F12</kbd> on your keyboard or by right-clicking any content and select something like „Inspect element“ (*mind that each browser has a different naming for that interaction*).

![Developer Tools in Chromium Web Browser](./devtools-chromium.png)
<div align="center">
  <small><i>Developer Tools in Chromium Web Browser</i></small>
</div>
<br><br>

## Brief explanation of the Developer Tools

### Document Object Model (DOM)

The so called DOM represents the rendered HTML document.
This is not equal to the source code.
The source code is more or less the basis of your document and top some elements might change during runtime, e.g. through JS scripts or other programming.
When you've opened the DOM you can hover each element and it will be highlighted inside your view.
This part of the developer tools is mostly useful for analysing the rendered DOM, removing parts or rearranging elements.

![Document Object Model (DOM) in Chromium Web Browser](./dom-chromium.png)
<div align="center">
  <small><i>Document Object Model (DOM) in Chromium Web Browser</i></small>
</div>
<br><br>

*Quests:*

1. Open any website and remove elements, that are unnecessary in your point of view.
2. Play around. You cannot do anything wrong. If you've removed accidentally something, just hit <kbd>Ctrl</kbd> + <kbd>Z</kbd> on Windows and Linux or <kbd>Cmd</kbd> + <kbd>Z</kbd> on your Mac.

### Style sheets (CSS)

While having an element highlighted you will find the element-specific styling.
Styles are mostly attached to the `class` attribute of the HTML element.

```css
.coming-soon {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 100%;
}
```

The dot in front of the CSS expression indicates that it fits to any element, that has `class="coming-soon"` defined.
These are called *selectors*.

```css
/* Element selector */
p {
  color: darkgray;
}
```

```html
<article>
  <h1>Headline</h1>
  <p>Lorem ipsum dolor sit amet ...</p>
</article>
```

The above selector rule or expression will look for any `<p>` tag and adapt its styling, namley to color the text red.

```css
/* Class selector */
.title {
  color: blueviolet;
  /* One line inside the CSS rule indicates an expression */
}
/* Everything inside the curley brackets indicates the CSS rule */
```

```html
<article>
  <h1 class="title">Headline</h1>
  <p>Lorem ipsum dolor sit amet ...</p>
</article>
```

In this case the expression `.title` will look for `class="title"` inside the DOM and color the text in blue violet.

```css
/* ID selector */
#description {
  color: orangered;
  /* │       └─── Indicates the value of the expression
     │                                                     
     └─────────── Indicates the property of the expression */
}
```

```html
<article>
  <h1 class="title">Headline</h1>
  <div id="description">This paragraph describes the article</div>
  <p>Lorem ipsum dolor sit amet ...</p>
</article>
```

Here we are using a different selector. 
Instead of looking for the class or a specific HTML tag, the expression looks for any tag that contains `id="description"`.
You should not use the same ID for different elements.
ID stands for *identifier*  and should uniquely identify an element.
For general rules use `class` with the `.` selector.

![Style Sheets (CSS) in Chromium Web Browser](./css-chromium.png)
<div align="center">
  <small><i>Style Sheets (CSS) in Chromium Web Browser</i></small>
</div>
<br><br>

*Quests:*

1. Open https://de.wikipedia.org/wiki/Ada_Lovelace and change style expressions in the developer tools.
   Mark `<h1 id="firstHeading" class="firstHeading" lang="de">Ada Lovelace</h1>` inside the DOM window and change the styles of `.mw-body .firstHeading`.
   For example change the text color by `color: red` or anything else.
   
2. Also adapt some new rules by clicking inside the expressions, add a new line by hitting <kbd>Return</kbd> and then press <kbd>Ctrl</kbd> + <kbd>Space</kbd>.
   This will open a drop-down menu with possible style properties.
   Choose one, hit <kbd>↹</kbd> ([Tabulator](../WCC-Glossary#tabulator)) to switch into the value field and also hit <kbd>Ctrl</kbd> + <kbd>Space</kbd>.
   Add some stylings and play around.
   
*Further reading*:

- https://developer.mozilla.org/en-US/docs/Learn/CSS/Introduction_to_CSS/Syntax

### The Console (JS)

The JavaScript console is most properly the most powerful tool of the developer tools.
You're having access to the whole JS code base that runs on the website.
You can even run even code that does not has to do with anything on the website.
Therefore is some knowledge necessary.

![JavaScript Console in Chromium Web Browser](./console-chromium.png)
<div align="center">
  <small><i>JavaScript Console in Chromium Web Browser</i></small>
</div>
<br><br>

*Quests:*

1. Open the console and click into the command line to put the cursor there. Hit <kbd>Ctrl</kbd> + <kbd>Space</kbd> to open the drop-down menu with suggestions.
   Just look around.
   
2. Type `alert('Hello World')` and hit <kbd>Return</kbd>.
   A popup should open.
   
3. Make some mathematical calculations, e.g. `10 * 5 + 3`.
   The result will be returned under your expression.

4. Instead of just prompting the result prepend `let x =` to your expression: `let x = 10 * 5 + 3`
   The result will be stored and you can reuse the result.
   Just type `x` into the command line and return the result.
   
*Further reading*:

- https://developer.mozilla.org/en-US/docs/Tools/Browser_Console

## Basic functionality

## DOM Manipulation

`window`

The DOM document is visible in the window that represents the window property. With the document.defaultView property a window for a document can be obtained.

<sup>*https://developer.mozilla.org/en-US/docs/Web/API/Window*</sup>

`document`

The document interface is a representations any possible web page on the browser. It makes it possible to enter into the web pages content (the DOM tree). It includes elements like <body> and <head>. It gives the possibility to obtain the page's URL and create new elements in the document 

<sup>*https://developer.mozilla.org/en-US/docs/Web/API/Document*</sup>

*Quests:*

1. Open the console and try to select a specific HTML tag by `document.querySelector()`.
   Inside the brackets you should write something like `'body'` or `'.headline'` or any other CSS selector.
   For example open https://de.wikipedia.org/wiki/Ada_Lovelace and mark the headline by `document.querySelector('h1')`.
   
2. As soon as a HTML element will be returned in your console, you can hover it and it will be highlighted in your website.
   Define a variable for later usage, e.g. `let element = document.querySelector('h1')`.
   
3. Type `el.` and hit the short-cut for displaying suggestions (<kbd>Ctrl</kbd> + <kbd>Space</kbd>) and look around.

4. Return the inner HTML text of your selected element by `el.innerHTML`

5. Change the inner HTML text of the element by re-defining the value of `innerHTML` by `el.innerHTML = 'That is my new content'`.
