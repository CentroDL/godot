## Straight Sluething with cURL

![:image](hawt_holmes.jpg)
We're going to begin exploring `HTTP` using a command found in `Bash` called `cURL`

`cURL` is used to transfer a `URL`

## First

Work with a partner! You'll have to suss out just is happening so talking it out will help.

Start with the following.

Enter the below line into your terminal and observe the output.

1. What information is received?
1. Is this the same information you get when visiting the URL in a browser?

```
curl https://www.gmail.com
```

Rerun the above `cURL` command but append it with ` --include`

```
curl https://www.gmail.com --include
```

1. What additional information do you receive?
1. Use curl's `man` page to find out what `--include` does.

### How to use `man` pages

1. Type `man curl` into your `Bash` prompt to bring up the manual page.

1. From the `man` page, type `/`, enter search term and hit `<enter>`

1. You can jump to different occurrences of the search word use `n`

1. press `q` to exit a `man` page.

## Rinse Repeat

1. Repeat the above steps with the following websites. **Be sure to run each command with the different flags on and off.**

```
curl http://www.google.com
curl http://www.newyorktimes.com
curl http://www.facebook.com
curl https://github.com/ga-students/godot
curl http://www.amazon.com
curl http://www.newyorktimes.com
curl https://www.cnn.com
curl http://www.cnn.com
curl https://www.hbo.com
curl https://httbin.org
curl http://httpbin.org
```

1. What is at the top part of every request?
1. What parts are different across the different sites?
1. Try some additional sites, what **numbers** are starting to appear often on the first line?

## More verbosely

`cURL` can take multiple flags so try appending all the above commands
with `  --verbose` as well as additional flags.

1. What do the following symbols mean in the displayed output?

```
*
>
<
```

1. What's a Hostname?
1. What's a DNS cache?
1. What are the numbers after the Hostname when it connects?
1. What is port 80?
1. Do any URLs use a different port?

## Take it easy

1. What does ` --limit-rate 1` do?

## Don't tell me what I can't do!

Try the following with your above links

```
curl -X POST http://www.google.com
curl -X JUMP http://www.google.com
```

1. What methods are allowed?
1. What Length might be required?

## In your Browsers

Visit `http://httpbin.org/`

Try `cURL`ing to the links at `http://httpbin.org/`

1. Why might some links be be not linkable?
1. What kind of data is returned?

## More in your browsers and terminal

Visit `http://requestb.in/` and sign up for a bin

Try `cURL`ing the following to your `requestbin`

> Be sure to continue to use `--verbose` and more to better understand the output!

```
curl -X PUT -d "black=mirror"
```

1. What do the additional flags mean?

Try it again but append `-A <YOUR NAME>`

1. What changes in the output?
1. If you append `?socks=wool` to the end of your `URL`s does something change?
1. If you append `#something` to the end of your `URL`s does it change anything?
1. What is a query string? How do you append multiple ones?
1. What is a URL fragment?

## Where is it?

Use `cURL` to send data to your `request` bin. Append a query string as well

`curl -X POST -d "coffee=black&juice=squeezed" http://requestbin/?breakfast=true`

Try appending `--trace-ascii -` or `--trace -`

Where does the data and query string appear in your requests?
