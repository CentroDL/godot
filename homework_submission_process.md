## Homework Submission Process

### Step 1: Add, Commit, and Push Your Work
Once you have completed your homework, head into the day's "Homework" directory and stage the files in the directory.

```bash
cd ~/dev/wdi/guildenstern/w01/d01/Homework
git add .
```
__Note:__ The dot in `git add .` stands for the current directory, meaning the entirety of the directory will be staged, including subdirectories. The `git add .` command is a convenient catch-all which you'll use all the time.

Once the files are staged, make a commit with a message in the present tense that describes what the commit accomplishes/fixes/deletes.

```bash
git commit -m "adds comments to homework solution"
```

Great, now you'll want to push this newly committed work up to your remote fork of the class repo.

```bash
git push origin master
```

__Note:__ In the line above, `origin` identifies which remote repo you are pushing to (you can have several), and `master` is the branch you wish to add work to. These are both default names provided by Git when we cloned your fork of the class repo, so don't be concerned if you don't remember naming them yourself.

### Step 2: Use submit_hw to Create a Pull Request to the Class's God Repo

Wonderful, your homework now exists up on your forked repo on GitHub. But we're not finished. To submit your homework, you will use a custom command called `submit_hw`, which will prompt you for Completeness and Comfortability ratings, which you'll enter as integers.

![image](./screenshots/submit_hw.png)

And voila: you're finished.

__NOTE:__ If it tells you that you already have a pull request open, fear not. It just means the instructors have yet to accept the previous day's pull request, and all code pushed to your fork will be adopted into the open pull request, so you're golden.

__SECONDARY NOTE:__ If you get an error that looks something like `undefined method 'captures' for nil:NilClass (NoMethodError)`, it likely means that you forgot to set up an "upstream" remote.

### Further Reading: what does submit_hw do?

Some background: when we set up your repos, we had you create what's called a GitHub __fork__, which is a personal remote copy of the class repo for you to do what you wish to it. When you use the `git push origin master` command (above), you push all of the local changes to your personal remote fork. But because your fork is your personal copy, the instructors have no way of knowing that you've done your work.

So the `submit_hw` command creates what's called a pull request. A __pull request__ asks another GitHub user to adopt or 'pull' the changes you've made to your forked repo into the original repo (in the class .

In doing so, submit_hw formats your pull-request message into an easily digested data format called JSON, with fields for 'completeness' and 'comfortability'. This formatted data allows us to easily track your comfort and progress during the course, and target you for help if necessary.
