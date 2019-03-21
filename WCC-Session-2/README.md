# WCC Session 2

*If you've completed the [Session 1](../WCC-Session-1) and want to check, whether you've answered the questions correctly, visit the [Solutions for Session 1](../WCC-Session-1/solutions.md).
In the previous session you've learned how to manipulate a web page live and locally during runtime in your browser.
You've heard of important platforms and communities which are important in the daily life of a web developer.*

This *Session 2* will be about [glitches](../WCC-Glossary/#glitches), bad practices and general issues of web pages.
Before we will have a closer look on how to develop a modern website, we should try to learn from general misconceptions of the web.

## General Issues

Maybe you have already noticed that one and the same website sometimes looks different.
Not only on different devices, i.e. screen sizes, as well as on different operating systems, but also in the endless amount of web browsers.
Of course, this is different from the apps on your mobile phone or software that you have to buy and install.
Fonts and colors look different, but content is also arranged differently or even hidden.
In this particular case of different arrangement, we usually speak of [responsive webdesign](../WCC-Glossary/#responsive-webdesign).
This means that a web page adapts to the size of the screen or/and device.
What is clear is that some content no longer fits next to each other, but is arranged one below the other.
Or sometimes even the navigation bar disappears and is hidden behind a so-called [hamburger menu](../WCC-Glossary/#hamburger-menu) and only unfolds when clicked.
So in some cases these are so-called [features](../WCC-Glossary/#feature), i.e. desired behavior, and sometimes called [bugs](../WCC-Glossary/#bug) or glitches, i.e. unwanted side effects.

So for us developers it is the default state that pages are not always pixel-perfect and do not look indistinguishable on any device.
We arrange ourselves with these side effects and could of course, if we had to, invest time and energy for every single browser version, for example, to secure every single unwanted side effect via so-called [workarounds](../WCC-Glossary/#workaround) or [fallbacks](../WCC-Glossary/#fallback), but this is often hardly possible.
Therefore it is often advisable to focus on certain target groups.
For example, you agree on the screen size up to which you want to adjust the page or which browser version you want to address.

What has not yet been mentioned here is [accessibility](../WCC-Glossary/#accessibility-a11y).
In this case one tries to put oneself in the position of people who have restrictions in the visual range or motor skills, i.e. that the pages should then remain usable without a mouse or it is ensured that signal colours are chosen in a spectrum that is also distinguishable for people with red-green weakness.
This is a topic of its own and will be discussed in a later session.

![Example of a responsive website](./responsive-webdesign.png)
<div align="center">
  <small><i>Example of a responsive website on three different screen sizes</i></small>
</div>
<br><br>

## Glitches

A frequent unintended side effect is a so-called glitch.
Elements are mistakenly displayed too large, too small or no longer at all.
If they are too small, they are no longer readable.
If the objects are too large, they exceed the screen size and the web page can suddenly be scrolled horizontally.
To avoid such glitches it is advisable to test websites on different devices, different screen sizes and different operating systems before publishing them.
As mentioned above, there are also cases where it is intentionally ignored to pay attention to these side effects, because the circle of affected users is too small or too unimportant.
In addition, some features are not supported in some browsers, either because they are too old and [deprecated](../WCC-Glossary/#deprecated), or because they are too modern and not yet supported.

For testing websites and search for that glitches it is recommended to use different devices either or emulate that screen sizes.
Therefore most browser support natively an emulator for common devices like smart phones or tablets.
To test a website, open your [developer tools](../WCC-Glossary/#developer-tools) and find this functionality.
In [Chrome](../WCC-Glossary/#chrome) and [Chromium](../WCC-Glossary/#chromium) called *device toolbar*.
In [Firefox](../WCC-Glossary/#firefox) it is called *Responsive Design Mode*.

![Device toolbar on Chromium/Chrome and responsive design mode on Firefox](./responsive-toolbar.png)
<div align="center">
  <small><i>Device toolbar on Chromium/Chrome and responsive design mode on Firefox</i></small>
</div>
<br><br>

## Bad Practice


