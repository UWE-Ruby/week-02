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

* Fork and clone this repository
* Run the tests
* Fix the failing tests


### [Do you hear the grasshopper at your feet?](http://www.youtube.com/watch?v=WCyJRXvPNRo)

* Starting over

    $ get checkout -- *
    
* Putting away your work

    $ git stash
    
* Cleaning up after yourself

    $ git clean -df
