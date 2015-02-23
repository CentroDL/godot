# Accessibility and Usability Guidelines

Everyone should be able to enjoy your site, whether they see colors differently, use a screen reader, or have other needs.

## Visuals

- Some people will use a screen reader with your site. Thus, images should have an alt attribute.
- Don’t rely solely on color to communicate state. Use icons and text too.

## Navigation

- Provide ways to help users navigate, find content, and determine where they are.
- Provide links back to the User's homepage and site homepage.
- Web pages should have titles that describe topic or purpose.
- If an element has been made "clickable" provide the proper cursor on mouseovers.
- Make sure you can navigate to all UI controls with the keyboard. Add tabindex=0 to custom controls (like those made with <div>) so people can tab to them. Consider if other keys should be supported too, such as arrows for a list.

## Forms

- If people will need to type more than a few words, use a text area.
- Make text areas at least two lines tall so they’re easier to use and don’t look like text fields.
- Place labels on top.
- Provide front-end validation.
