# Week 2

## Introduction

Wow, you made it. Installation and configuration is probably the hardest part of the entire process and sadly can dissuade so many from taking the next great steps. Thank you for your commitment.

All the tools that we put in place in the first exercise will be used again in this exercise. However, this time *you are going to author your own failing test and enlist the help of others to fix it*.

Alongside that devilish task we will also return to learning more about Ruby itself by exploring: [Arrays](http://rubydoc.info/stdlib/core/1.9.2/Array); [Hashes](http://rubydoc.info/stdlib/core/1.9.2/Hash), and [Ranges](http://www.ruby-doc.org/core/Range.html).

Lastly, I want to share with you some git exercises that will hopefully help you gain a greater understanding about how to use it as a tool in your every day development.

### Exercise Outline

#### Laying a trap

* Creating a new code repository
* Creating our own failing test 
* Finding a friend who will fork, clone, and fix our broken test

#### Back to the dungeon

* Fork and clone this repository
* Run the tests
* Fix the failing tests

#### [Do you hear the grasshopper at your feet?](http://www.youtube.com/watch?v=WCyJRXvPNRo)

* Starting over
* Putting away your work
* Cleaning up after yourself

## Exercise

### Laying a trap

Github allows you to create an unlimited number of public repositories. So there is nothing stopping you from using it right now for maintaining a copy of any of your personal projects or files (that you don't mind being public).

In this exercise we are going to create a new repository, author an RSpec test that fails, and then push that test up to Github. Then we are going to find a -victim-, I mean friend, that will fork our repository, fix the test, and then submit a 'pull request' with that fix.

These [instructions](http://help.github.com/create-a-repo/) will help you create a repository.


    NOTE: The instructions describe setting a repo named 'Hello World' instead use the name `week-02-exercse`.
    
1. Creating a repository named: *week-02-exercise*
2. Create a directory name: *week-02-exercise*
3. Within your `week-02-exercise` run the command `git init`
2. Within your `week-02-exercise` directory, create a folder named `spec`
3. Within the `spec` folder create a file named `exercise_spec.rb`
4. Edit the file `exercise_spec.rb` and write a test for a [String](http://rubydoc.info/stdlib/core/1.9.2/String), [Integer](http://rubydoc.info/stdlib/core/1.9.2/Integer), or [Symbol](http://rubydoc.info/stdlib/core/1.9.2/Symbol).

```ruby
describe "Strings" do
  context "when calling strip" do
  
    it "should remove all whitespace from the beginning and the end of the string"
    
        lyrics = "  Hello, is it me you're looking for I can see it in your eyes  "
        
        lyrics.strip.should eq "Hello, is it me you're looking for I can see it in your eyes"
  
  end

end

```

When you get the test to pass successfully, it is time to make it fail. Change the test ever so slightly so that when you run the tests again you see an error.

Excellent, now it is time to save the work.

You are welcome to create a `README` file for your project within the `week-02-exercise` folder. In it you can write a description about the test you wrote and perhaps you can provide a link to the Ruby documentation that might help the user fix it.

Within the root of your project directory

    $ git add spec/exercise_spec.rb
    
If you created a `README` file add it as well

    $ git add README

Now with those changes *staged*, it is time to commit them.

    $ git commit -m "Test fails and you're my only hope."

Push those changes to your git repository `week-02-exercise`

    $ git push origin master

#### Finding a Victim / Being a Victim

Find another student in class: that is seated near you; through Hipchat; or through our [Github organization](https://github.com/organizations/UWE-Ruby/teams/90635). Ask them to clone, fork and fix your repository. You should do the same for them.

For your friends repository that you are creating a fix for the failing test it is time to open up a [Pull Request](http://help.github.com/send-pull-requests/). A pull request is initiated from your repository and send to the person's repository that you originally forked.

* Preview Discussion
* Commits
* Files Changed

For the repository you have authored, when you receive a pull request find where and how you merge it.

Github makes handling pull requests easy to initiate, easy to view, and easy merge. Take your time to look around at the various sections of a pull request:

### Back to the Dungeons

Similar to the previous exercise, it's time to go back to work. Each exercise file introduces a new concept with a few working examples. Within the file are a number of failing examples. You're job is to fix the examples.

* Fork and clone this repository

        Instructions on how to Fork and Clone: http://help.github.com/fork-a-repo/

* Run Bundler

```bash
bundle
```

* Run the tests

```bundle
rake
```

I strongly encourage that you run `guard` in another command/terminal window. As you fix tests (or break them further) you will see the results immediately.

* Fix the failing tests

* Save your changes

```bash
git add spec
git commit -m "Fixes to the Broken Examples"
```

* Share your changes

```bash
git push origin master
```


## Exploration

Congratulations. If you have made it this far you have completed all you had to accomplish. But I'm sure that you likely have burning questions or would like to learn more about a particular technology or Ruby. This is your chance...

### [Do you hear the grasshopper at your feet?](http://www.youtube.com/watch?v=WCyJRXvPNRo)

[Git](http://gitref.org/) is complex software. I am repeating myself from the previous exercise on purpose. It is complex. I continue to learn a new command or flag each week. Try not to become overwhelmed.

I want to share with you a few useful commands to aid you in future work.

#### Starting over

Occasionally you will spend some time trying to find a solution and in the process realize that you completely *messed* everything up. Royally. In the old days you probably held down CTRL+Z / CMD+Z hoping that your editor will take you all the way back in time when everything worked. Most of the time that works. Sometimes it failed you.

The awesome thing about having a local source repository is that you have access to all the changes that you've made. A lot of times the most important one is the last one. The one before you tried your crazy experiment. Git makes it easy to experiment.

Try changing a few files any way you want - add a few characters here; remove a few characters there - do your worst. When you are done run the command:

    $ git status

This will show you a list of the files that you have changed. You should see the files that you have decimated and dismembered.

    $ git checkout -- NAME_OF_THE_FILE_YOU_CHANGED

Some text editors will notify you that the files have changed. If it has not then re-open the file. You should be presented with your original file. The state of the file at the state of the last time you committed.

#### Putting away your work

Sometimes you have work you do not want to throw away and instead put aside for a moment to do something else with the code. To start over BUT keep those changes you can use the following command:

    $ git stash
    
`git stash` takes your current changes and tucks them away. It secretly commits them and stores them on the side for you. This allows you to clean up all your changes allowing you to start fresh. When you are done you can bring back stashed code with the following command:

    $ git stash pop

This is useful for times when you are working on something and realize that something else is broken and you want to fix that before continuing on with the work that you are doing.

Again make some changes throughout various files. Stash those changes. Change another file, stage, and then commit that change (suggestion: add some comments). Now pop the stashed changes.

#### Cleaning up after yourself

The previous commands work well for files that the git repository knows about, but not about the git repository has no control over (files you have never added to it). Sometimes your code may have spewed some files that are cluttering up your directories. You can delete them as you would normally. You can also use the `git clean` command which will do some of the work for you (and being cautious about the files you have within your source repository).

Generate a bunch of files in various directories by copying other files or using the command `touch NAME_OF_FILE`. After you generate some files look at your status:

    $ git status
    
You should a list of files in the *untracked* section. Now make some changes to your files that you do track. Now run:

    $ git clean -df
    
Running this command should clean up all the files in your directories while leaving the changes that you made to the files that you have in source control.


### [Arrays](http://rubydoc.info/stdlib/core/1.9.2/Array) and [Hashes](http://rubydoc.info/stdlib/core/1.9.2/Hash)
  
Arrays and Hashes are awesome in Ruby and that is in large part thanks to Enumerable. Take some times to explore the API and the methods available to arrays and hashes.

For both Array and Hash:

* Find two method that interests you
* Create a new RSpec example `it "should sort the Array for me"` that exercises that method.

### HighLine Gem

We purposefully skipped some some introductory programming examples where we output questions and then ask for responses. Usually this is done through `puts` and `gets`. Next week we are going to explore some questions and answer type programming but with a much more robust way with [Highline](http://rubydoc.info/gems/highline/1.6.2/frames).

Run the command:

```bash
$ rake highline
```

Or

```bash
$ ruby lib/highline.rb
```

    NOTE: Window's users need to use a backslash \ instead of forward slashes /

It should hopefully say hello and ask you a question. When you are happy with that open up `lib/highline.rb` and look at the syntax. You may have a strange sense of deja-vu when looking at this code. It looks very much like RSpec, Guard, Rake, and all these other files that we have used up until this point.

Take a stab at adding your own [questions, default answers, validations, or menus](http://rubydoc.info/gems/highline/1.6.2/frames).

### Sinatra

[Sinatra](http://www.sinatrarb.com/intro.html) is an awesome way to create websites in ruby very quickly and easily.

Run the command:

```bash
$ rake sinatra
```

Or

```bash
$ ruby lib/sinatra.rb
```

    NOTE: Window's users need to use a backslash \ instead of forward slashes /

It should launch a website on `localhost:4567` that if you visit in your browser. When that is working for you open up `lib/sinatra.rb` and look at the syntax. Again this strange sense of deja-vu when looking at the code.

Look at the [documentation](http://www.sinatrarb.com/intro.html) and create some of your own routes and play with parameters.