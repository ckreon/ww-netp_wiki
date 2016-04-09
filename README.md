# NetP Wiki
Welcome to our open-source collection of guides focusing on Network Privacy & Security!

This readme will be updated with guides for adding & editing content soon.


The NetP Wiki is built mainly with Markdown. If that is a new term, it's a straightforward and simple syntax that makes styling text easy. We've made a quick-start guide for reference below.

## Markdown Reference:

**Markdown:**

```
This is a main header!
======================
```

**Result:**

This is a main header!
======================

---

```
This is a secondary-heading!
----------------------------
```

This is a secondary-heading!
----------------------------

---

```
##### Use hash-tags to create section headers
```

##### Use hash-tags to create section headers

```
**A horizontal line can be made in a few ways:**

--- (three dashes)

*** (three asterisks)

___ (three underscores)

```

---

***

___


```
Use two spaces after text to create a new line:  
*This is italic text!*  
**Random bold text.**  
~~Scratch this out.~~
```

Use two spaces after text to create a new line:  
*This is italic text!*  
**Random bold text.**  
~~Scratch this out.~~

---

```
> This is a blockquote
> It can go on for multiple lines in markdown,
> and can have *italic* and **bold** text too,
> even ~~the scratched-out stuff~~!
```

> This is a blockquote
> It can go on for multiple lines in markdown,
> and can have *italic* and **bold** text too,
> even ~~the scratched-out stuff~~!

---

```
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
```

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

| I'm                    | A                      | Table                  |
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