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

```js
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
