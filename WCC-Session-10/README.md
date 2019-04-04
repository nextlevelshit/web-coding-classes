# WCC Session 10

Any project, any idea, any plan needs a starting point.
Usually your job as a developer is to decide which requirements are feasible, which features have high cost in comparison, speaking of time and energy.
In my opinion a developer needs to sit right from the beginning at the table of decision making, if there are more stakeholders involved in a project.
If you are developing your own stuff, you will need to pass each project phase by yourself.
Therefore, you should take enough time for all tasks at the beginning.
Take your time and re-evaluate, re-think stuff and already taken decisions.

Here is a list of typical tasks and decision, that are needed in any progress of the project:

- What is the problem definition?
- What are the technical requirements?
- Which *Tech Stack* fits best to solve the problem?
- Should a *Framework* be used, if so which one?
- What's about *Long Time Support (LTS)*, Maintainability, Sustanability?
- Do processes and strategies exist to meet the desired software life time?

After the general planning stuff and going more into detail there is a urgent question to be answered:

- What are the entities?

Entities could be translated as things.
Often also called ontology.
We have to define what objects we want to save, read, analyse, mutate, delete, adapt etc.
What are the different types of objects we need? Which objects are children of others, so called relationships and inheritances.

```ts
interface Book {
  title: string;
  author: string;
  year: number;
}

interface Dictionary extends Book {
  //                   └─ Indicates inheritance of a parent-child-relationship  
  languages?: string[] 
  //       │         └─── Indicates a list of strings
  //       │
  //       └───────────── Indicates an optional parameter
}
```

This is a simple example for TypeScript `interface`'s.
A `Book` has to have a title and author.
Both are simple string which means they are alpha-numeric sets of characters.
They can both contain for example letters, numbers, symbols and special characters.
The `year` must be a number without floating points.
And a `Dictionary` inheritates all attributes from a `Book` and adds one more optional parameter, namely a list of `languages`.
Languages have to be a list of strings and can be empty.

```ts
let favoriteBook: Book = {
  title: `Brave New World`,
  author: `Aldous Huxley`,
  year: 1930
}

const commonDictionary: Dictionary {
  title: ``,
  author: ``
  year: 2014,
  languages: [`English`, `German`]
}
```

These are not only `interface`'s anymore, they are already set definitions of the variables `favoriteBook` and `commonDictionary`.
If I want to know, when Aldous Huxley's Science-Fiction had been published, I will have to check for `favoriteBook.year` and the value of that parameter of that book will return `1930`.
In that certain example we are using immutable constants which means, once defined they cannot be changed anymore, and a mutable variable.
My favorite book can change anytime and the common dictionary will have to stay with its once defined values.
This is not fully correct.
If it is a constant, I will not be able assign a whole new set of values, but change single values of specific attributes.

## Sample Project - A Carpenters New Website

In the following example I want to demonstrate how I would figure out how to release a new website for a client.
Therefore, I will incrementally answer all questions above before starting to code and re-iterate that questions over and over again, till I decide to make a feature-freeze.
This meane, no more new features and requirements can be set anymore.

### Problem definition

Potential clients cannot look through the services of the carpenters repository of skills and realized projects.
Each new client has to ask the carpenter to show him, which projects he or she already realized.
New as old clients cannot find any contact information in the web.
The carpenter uses a private email address for corporate communication.

### Technical Requirements

- The client needs a domain
- The client needs a webspace to host his or her new website
- The client needs a mail server to communicate professionally through his own domain
- The client does not want to be able to change information on the website by her or his own.

### Tech Stack

The client does not to wish to change information by his or her own, so no database is needed.
A simple static page generator will be completly enough.
In my role as a web developer I am familiar with languages like HTML, (S)CSS, JavaScript, TypeScript etc.
So, I have to decide if i want to program the whole site with native code without any framework or choose a set of frameworks to bootstrap the project quicker.

I decide to use the following tech stack:
- Gatsby (*React-related framework which works perfectly with static content*)
- TypeScript and JavaScript for programming
- NodeJS under the hood for server-side JavaScript intergration
- No specific (S)CSS framework like *Twitter Bootstrap*, *Foundation for Sites* etc.
- For convenience reasons I will use SCSS to use variables inside my style definitions and other helpful functions.

### Maintainability and Sustainability

Gatsby is a perfect choice for all developers which wish to be *en vouge*.
It implements *GraphQL* which is the modern alternative for *RESTfull API's* and is based on *React*, some fancy new style of programming single components that cluster to something bigger and result in a full-blown web application.
Gatsby also provides a very convient process for developing and deploying your software locally on your machine and on a server for public access.
Facebook is the maintainer of React.

TypeScript is a modern spin-off from JavaScript which allows you to build more robust software.
The maintainer is Microsoft.

Two big comanies are interested in providing that „products“ for a long time, because they are having a huge profit from others that use them.
Therefore there should not be any fraud of sudden disappearance of this projects.
Even if both companies collapse the software will still run and the community will implement alternatives built upon that pieces of code.

### Long Run Strategy

TypeScript and Gatsby look like a good choice, not only for sustainability and maintainability reason, but also for extensionabilty.
If the customer decides to put some dynamic content, wants to adapt some more navigation items or what ever, I will be able to adapt this features easily.
But if the client decides to be able to change content by his or her own, this might bring some problems.
We do not think of a database nor a content management system.
This should be clearified in detail with the client.
Future feature requests like the latter one, will be quite hard but not impossible to realize.