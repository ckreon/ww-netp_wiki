---
layout: default
permalink: '/Guide2/'
title: Guide 2
---
Guide 2
=======

This is a comprehensive walkthrough of a subject!
-------------------------------------------------

##### This is just filler text:

Lorem ipsum dolor sit amet, ne movet sonet denique est. Pri at graecis urbanitas argumentum, possit accusata mea ei. Iusto delectus dissentiunt ad ius, modo possim ei pri. Abhorreant comprehensam pri et, nam ex sonet offendit necessitatibus, facilis accusam vix ex. Pri unum falli reformidans in, ut vim graecis salutatus aliquando. Ludus numquam adversarium qui at, graeci dolorem no sea, sed at erroribus vituperatoribus.

**Make a horizontal line with:**

---

Use two spaces after text to create a new line:  
*This is italic text!*  
**Random bold text.**  
~~Scratch this out.~~

> This is a blockquote about nothing.
> It can go on for multiple lines in markdown,
> but will render in-line on the page!

Just some random text before another blockquote.

> Blockquotes can have *italic* and **bold** text too,
> even ~~the scratched-out stuff~~.

##### Some lists:

1. Ordered List
2. Here's an element with an ordered sub-list:
  1. Item 1
  2. Item 2
3. Here's an element with an un-ordered sub-list:
  * Item A
  * Item B

* Unordered List
* Here's an element with an ordered sub-list:
  1. Item 1
  2. Item 2
* And another element with an un-ordered sub-list:
  * Item A
  * Item B

---

##### Some Links:

[This is an inline link](http://www.example.com)  
http://www.example.com (direct link)

---

##### Here's a code-block example:

**To make a codeblock, use 3 backticks ( ``` ) to open and close your code:**

```
function format () {
  var args = [].slice.call(arguments);
  var initial = args.shift();

  function replacer (text, replacement) {
    return text.replace('%s', replacement);
  }
  return args.reduce(replacer, initial);
}
```

**You can also make a codeblock by indenting text 4 spaces:**

    You can also do it this way
    (indent the text with 4 spaces)
    That makes it a codeblock too!

---

##### How about a table!

| This                   | Is                     | A                      |
|:---------------------- |:---------------------: | ----------------------:|
| This column            | This is                | *Right*                |
| will align             | *center*               | Aligned                |
| *left*                 | aligned                | Column!                |
| **A**                  | **B**                  | **C**                  |
| ---------------------- | ---------------------- | ---------------------- |

*The bottom dashes render, and are used here to spread out the table.*

---

### Want to know more?

**[Markdown Cheatsheat](https://github.com/adam-p/markdown-here/wiki/Markdown-Here-Cheatsheet)**