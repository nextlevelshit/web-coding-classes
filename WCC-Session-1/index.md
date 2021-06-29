# WCC Session 1

Welcome to the first *Web Coding Class* Session. 
If you're a total beginner and want to start coding, you'll find here much introductory information on how the Internet works, what happens in the background of your browser while you're browsing the web etc.
There is a huge demand for good web developers.
What is meant by „good” we will explain on a later session.
But, don't worry about that right now.  Proceed or skip different sections or even whole session.
Every chapter holds a *questions and quests* section for you to dive deeper into the topics.
It's just a nice-to-have.
Feel free to skip them.

> **NOTICE**  
> Besides these Sessions there is an comprehensive [Glossary](../WCC-Glossary/README.md), which explains all that technical vocabulary.
> Most technical words will have hyperlinks to its explanation.
> Feel free to contribute a better description, as this project is still under heavy development.
> [Here you can find the answers](./solutions.md) to the questions of Session 1.

## Website Manipulation

> It's all visible.

Websites are simply programs, that run on servers (*many stacked computers, that are „always“ reachable in the web*) and can be opened by any web browser.
If you buy any program out their (excluding open source software), you won't be able to look what at what is going on inside.
It's like buying a smartphone or laptop without any simple possibility to change the battery.
But websites are different, because a huge part of it's code is directly accessable.
So, you can have a close look on what's going "under-the-hood".

Let's take an example from the „real world“.
Imagine you're wanting to buy a new chair from a carpenter.
So, you're sending a `Request` to the source of distribution, in this example the carpenter.
And you're getting a `Response`, in this case a chair.
In the web you're doing almost the same, but you're sending your `Request` to a server and getting back a bunch of text and data as a `Response`.
This `Response` does not include the whole chair, but its source code, some kind of construction manual to build the chair.
Your browser is capable of reading this instruction and interpreting it.
That way, you can see the the completed chair, but the instruction used to build the chair come with the chair itself.
And the carpenter rarely gives information about his or her construction plans.
Websites are a great source of having both, the plans and the product.
Even other software is mostly just the product without any possibility of interacting with the plans.



That said, we should have a look and inspect a web page:

```
1. Right-click any content in this web page.
2. Choose „Inspect“
```

You could also hit the <kbd>F12</kbd> key on your keyboard.
This opens the `Inspector` which lets you dive into a huge part of the code.

![Inspector inside Chromium Browser](./browser-inspector.png)
<div align="center">
  <small><i>Chromium Browser with opened Inspector Tool</i></small>
</div>
<br><br>

If you're curious, go ahead and try to manipulate any content. 
No worries, this is only [client-side](../WCC-Glossary/README.md#client-side), it's only locally to your computer.  You cannot break the site.
You might also like to click through the different tabs.
There is a lot of information about the current state of that web page visible. 
We will have a closer look at what is going on here.  In the meantime, feel free to play around.

### Questions

1. What are the most popular web browsers?
2. Which was the first graphic web browser, ever?
3. In which language are most web browsers developed?
4. Which short-cut is used to focus the [address bar](../WCC-Glossary/README.md#address-bar)?

### Quests

*For verification make a screenshot of your results. Remember, your changes are only local and do not persist. After closing the tab, window or browser your changes are gone.*

1. Open any news website and change the headline into something funny.
2. Open any online shop and change any image.

## Creating Accounts

> Web developers are not alone.

After a while you will see how huge our community is.
We have our own „newspapers“, question-and-answer (Q&A), and platforms to colaborate, present and discuss our projects.
And you're already right there.
This is `GitHub`.
It's *the place to be* for developers at all, not only web developers.

### GitHub

GitHub is a collaborative platform for hosting, sharing, discussing and maintaining code in a central point, so every involved person can investigate, search and read about others and his or her own projects.
You can use this platform to host your own project and decide if it should be visible for the public audience.
If you want to code something privately, just with your friends or co-workers, this is totally fine and possible.

![Screenshot of Landingpage of github.com](./screenshot-github.png)
<div align="center">
  <small><i>Landing page of github.com</i></small>
</div>
<br><br>

Think about getting an account here.
Later on it will make things much easier, because all the source code here are versioned with a tool called "Git".  Git is a massivly important tool to help to make code maintainable.

#### Questions

1. What are common alternatives to *GitHub*? Can you find some on the web and how do they differ from *GitHub*?
2. What is the business model of *GitHub*? How do they make money?
3. What is the most popular programming language used in the projects hosted on *GitHub*?

#### Quests

1. Create an account on *GitHub*.
2. Create your first [repository](../WCC-Glossary/README.md#repository).

### Stack Overflow

https://stackoverflow.com/users/signup

![Screenshot of Sign-up Page of stackoverflow.com](./screenshot-stackoverflow.png)
<div align="center">
  <small><i>Sign-up page of stackoverflow.com</i></small>
</div>
<br><br>

#### Questions

1. What are common alternatives to Stack Overflow?

#### Quests

1. Create an account on Stack Overflow.
2. Complete the [Beginners Tour](https://stackoverflow.com/tour)

### Hackernews

https://news.ycombinator.com/

![Screenshot of overview of top stories on hacker news](./screenshot-hackernews.png)
<div align="center">
  <small><i>Overview of top stories on hacker news</i></small>
</div>
<br><br>

Hackernews is the daily „printed“ newspaper for developers over all division.
Every member can publish a link to an article found on the web.
Every other member can up or down vote it, and discuss the content and intention of this article.
At the end of each day, the list will be reset. So you only recieve the hottest topics every day.
Further, there are many topics on Hackernews to choose from.
So, take a look and find out which categories are there.

### Questions

1. What are common alternatives to *Hackernews*?

### Quests 

1. Find the `noobstories`.

