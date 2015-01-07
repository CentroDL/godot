# HTML Forms

In order that you never go to W3Schools (never go there), here is a basic cheat sheet for writing simple HTML forms.

This is culled from **[a][HTML5Please] [few][HTML5Doctor] [sources][HTML5DiveIn], [the most important being MDN][MDN]**. MDN (the Mozilla Developer Network) should be seen as "the docs" when you are having an issue with HTML.

### The Form Element (Tag)

[MDN's section on forms.](https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/Forms) The necessary points:

```html
<form method="post" action="/tweets">
  <label>Tweet Text:
    <input type="text" name="tweet_content"/>
  </label>
  <input type="submit" value="Create Tweet" />
</form>
```

#### Attributes

- **method**: the HTTP verb (method) that the browser uses to submit the form. We use "POST" to stand in for `POST`, `PUT` and `DELETE`.
- **action**: the path of the HTTP request page that processes the information submitted via the form.
- **the _route_**: is the combination of the verb (method) and path, and must be defined on our app for this form to submit data correctly.

#### The &lt;label&gt; element

"The `<label>` element is the formal way to define a label for an HTML form widget. This is the most important element if you want to build accessible forms." --MDN

There are two ways to use labels correctly:

```html
<!-- Simple (nested) label example -->
<label>Click me
  <input type="text" id="user" name="name" />
</label>

<!-- Using the "for" attribute with the input's id -->
<label for="user">Click me</label>
<input type="text" id="user" name="name" />
```

### Using &#95;method for REST

Because the arbitrary and decrepit owners of **the HTML spec** refuse to accept the glorious gifts provided by the thoughtful and far-sighted designers of **the HTTP spec**, they have not created an HTML format for natively sending any requests other than GETs (via `<a>` (anchor) tags) and POSTs (via `<form>` tags). In order to implement RESTful behavior (semantic HTTP, ie Web Services), we must use a workaround to send `PUT` and `DELETE` requests:


```html
<form method="POST" action="/page">
  <input type="hidden" name="_method" value="PUT" />

  ...
</form>
```

We use a hidden input with the name "&#95;method" and the value as the HTTP verb we wish to use.

### HTML's Go-To Inputs

| Field Type | HTML Code | Widget (Control) | Notes |
|:-- |:-- |:-- |:-- |
| plain text | `<input type="text">` | ![<input type="text">][text] | the type attribute can be omitted |
| password field | `<input type="password">` | ![<input type="password">][text] | echos dots instead of characters |
| text area | `<textarea></textarea>` | ![<textarea></textarea>][area] | a more customizable plain text area |
| checkbox | `<input type="checkbox">` | ![<input type="checkbox">][check] | can be toggled on or off |
| radio button | `<input type="radio">` | ![<input type="radio" name="group"> <input type="radio" name="group">][radio] | can be grouped with other inputs |
| drop-down lists | `<select><option>` | ![<select><option>Option 1</option><option>Option 2</option></select>][select] | [check here for more info](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/select) |
| file picker | `<input type="file">` | ![<input type="file">][file] | pops up an “open file” dialog |
| hidden field | `<input type="hidden">` |  | nothing there!
| submit button | `<input type="submit">` | ![<input type="submit">][submit] | activates the form's submission <br/>( a POST request or Javascript action) |

### Important Attributes

All input types (including &lt;textarea&gt;s):

- **type**: the type of data that is being input (affects the "widget" that is used to display this element by the browser).
- **name**: the key used to describe this data in the HTTP request.
- **id**: the unique identifier that other HTML elements, JavaScript and CSS use to access this element in the browser.
- **value**: the default data that is assigned to the element.
- **placeholder**: not a default value, but a useful HTML5 addition of a data "prompt" for an input.
- **disabled**: a Boolean attribute indicating that the "widget" is not available for interaction.

Radio buttons or checkboxes:

- **checked**: a Boolean that indicates whether the control is selected by default (is false unless).
- **name**: the group to which this element is connected. For radio buttons, only one element per group (or name) can be checked.
- **value**: the data or value that is returned for a specific group (a multi-element control), if this element is checked.

### HTML5 Input types and Tags

HTML5 has included a greater number of really useful inputs! [You can find them at a great place to go to get HTML help.](http://diveintohtml5.info/forms.html#type-email)

<!-- Resource Links -->

[HTML5Please]: http://html5please.com/
[HTML5Doctor]: http://html5doctor.com/
[HTML5DiveIn]: http://diveintohtml5.info/
[MDN]: http://developer.mozilla.org/en-US/

<!-- Images -->
<!-- ...also served at: https://raw.github.com/h4w5/html_form_cheatsheet_images/master/ -->

[text]:   images/input-text.png
[area]:   images/textarea.png
[check]:  images/input-checkbox.png
[radio]:  images/input-radio.png
[select]: images/select-option.png
[file]:   images/input-file.png
[submit]: images/input-submit.png
