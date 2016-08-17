# Routes Playground

Routes Playground is a simple app built with Sinatra to explore and illustrate how routing works in Sinatra. In order to use it, clone this repo, cd into it in your terminal, and run `shotgun` from the command line in the `routing_playground` directory. You should see your server start up.

Once you have it up and running, use the following steps/questions to guide your exploration. Later instructions depend on earlier changes, so if you don't go step by step there's a decent chance that later steps will break.

## Beginnings

- What happens when you visit root?
- How many requests does visiting root create? Check the terminal where your server is running to see.
- In that same terminal can you see the requests that are being made? What are they?

## CSS from Our Controller (don't ever do this)

- Add the following code to your `app/views/home.erb` file:

```
<link rel="stylesheet" href="/css/rewrite.css">
```

- Visit root again.
- What happens? Why do you think this is happening?

## More CSS from Our Controller (seriously... don't ever do this)

- Add the following code to *the bottom* of your `app/controllers/playground_app.rb` file:

```
get '/css/rewrite.css' do
 "body { background-color: orange }"
end
```

- Visit `root`.
- Did anything happen? Did what you expected to happen actually happen?
- What about this, take that same code snippet and copy it to the top of the same file.
- What about now? Is that what you expected?

## Visiting Routes That Don't Exist (still... probably don't do this)

- Take a look at the routes in your controller (`app/controllers/playground_app.rb`)
- What do you think will happen if you visit `/index.html`? Do you have a route for it?
- Visit `/index.html`.
- Is that what you expected? Can you figure out why that’s happening?
- Take a look in your public folder and open `index.html` (the file that’s being served in the previous step)
- Notice that the link to the css in line 4 of that file doesn't have a leading `/`. Add one.
- Reload `/index.html`. Did anything change? Any thoughts on why/why not?

## Public vs. Controllers

- Check your routes file for a `get '/nested/index.html'`
- Notice that there's also a file called `index.html` in your `/public/nested/` directory.
- Which do you think will render if you visit `/nested/index.html`?
- Visit `/nested/index.html`
- Was it what you expected?
- Change the name of the `/public/nested/index.html` file to something else.
- Reload `/nested/index.html` to see if there's a change.
- Go ahead and change the name of that file back to `index.html`

## Relative vs. Absolute Paths

- Open the `/public/nested/index.html` file (that you just renamed back to `index.html`, right?)
- Notice that there's no leading slash on the css link in line 4.
- We have two files named nested.css:
    - one in `/public/css/`
    - one in `/public/nested/css`
- Open both files.
- Which is currently being used for the page if you visit `/nested/index.html`?
- Go ahead and edit the css link in `/public/nested/index.html` to include a leading `/` (e.g. `/css/nested.css`)
- Reload and check to see which is being used now.

## Review

Based on all of the above, write a quick summary of some basic rules for how routing works in Sinatra.
