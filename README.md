# NetP Wiki
Welcome to our open-source collection of guides focusing on Network Privacy & Security!

This readme will be updated with guides for adding & editing content soon.


The NetP Wiki is built mainly with Markdown. If that is a new term, it's a straightforward and simple syntax that makes styling text easy. We've made a quick-start guide for reference below.

## Markdown Reference:

#### Main Header in Markdown:

```
This is a main header!
======================
```

#### Result:

This is a main header!
======================


#### Secondary Header:

```
This is a secondary-heading!
----------------------------
```

This is a secondary-heading!
----------------------------

#### Section Headers:

```
# This is the same as the main header

## This is the same as the secondary header

### A little bit smaller

#### Even smaller still

##### How low can you go?

###### This low, actually, there's nothing beyond here
```

# This is the same as the main header

## This is the same as the secondary header

### A little bit smaller

#### Even smaller still

##### How low can you go?

###### This low, actually, there's nothing beyond here

---

#### Horizontal Lines:

```
A horizontal line can be made a few ways:

--- (three dashes)

*** (three asterisks)

___ (three underscores)

```

---

***

___

#### New Lines:

```
Use two spaces after text to create a new line:  
Use an extra line to create a new paragraph:

*This is italic text*  
**Random bold text**   
~~Scratch this out~~
```

Use two spaces after text to create a new line:  
Use an extra line to create a new paragraph:

*This is italic text*  
**Random bold text**   
~~Scratch this out~~

---

#### Blockquotes:

```
> This is a blockquote.
> It can go on for multiple lines in markdown,
> and can have *italic* and **bold** text too,
> even ~~the scratched-out stuff~~!
```

> This is a blockquote
> It can go on for multiple lines in markdown,
> and can have *italic* and **bold** text too,
> even ~~the scratched-out stuff~~!

---

#### Lists:

```
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

#### Links:

```
[This is an inline link](http://www.example.com)  
http://www.example.com
```

[This is an inline link](http://www.example.com)  
http://www.example.com

---

#### Codeblocks:

    To make a codeblock, use 3 backticks ( ``` ) to open and close your code:
    
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

---

#### Tables:

```
The bottom dashes aren't necessary, they just spread out the table to better show the different alignments.

| I'm                    | A                      | Table                  |
|:---------------------- |:---------------------: | ----------------------:|
| This column            | This is                | *Right*                |
| will align             | *center*               | Aligned                |
| *left*                 | aligned                | Column!                |
| #### A####                   | #### B####                   | #### C####                   |
| ---------------------- | ---------------------- | ---------------------- |
```

| I'm                    | A                      | Table                  |
|:---------------------- |:---------------------: | ----------------------:|
| This column            | This is                | *Right*                |
| will align             | *center*               | Aligned                |
| *left*                 | aligned                | Column!                |
| #### A####                   | #### B####                   | #### C####                   |
| ---------------------- | ---------------------- | ---------------------- |

### Want to know more?

#### [Markdown Cheatsheat](https://github.com/adam-p/markdown-here/wiki/Markdown-Here-Cheatsheet)#### 