# SICP exercises Scheme implementation
And in what other language they should ever be? :) The read-along folder contains the snippets of code used for explanations in chapters, not exercises that are instead in the same folder of this README file.

## Installing Scheme on MacOS X
There is a good thread about what Scheme implementation to use to follow along with SICP exercises [on StackOverflow](http://stackoverflow.com/questions/459323/what-is-the-best-scheme-or-lisp-implementation-for-os-x) and it essentially boils down to the great out-of-the-box experience of Racket (ex Dr.Scheme). MIT Scheme is also the primary choice although it requires a little bit more setup (and runs under X in MacOs which I hate).

### 10.6.8
* download [Racket](http://www.racket-lang.org/download/)
* Expand the DMG and drag and drop the Racket folder (5.3.1 at the time of this) in the /Applications folder
* MIT Scheme is not very different. Download the correct image for your Mac (mine is 64 bits) from the [GNU website](http://ftp.gnu.org/gnu/mit-scheme/stable.pkg/9.1.1/mit-scheme-9.1.1-x86-64.dmg)
* Expand and drag the single .app file into the Applications folder.

### DrRacket
When you double click on it you're in a REPL. You need to select the language (click on languages) and use the first option (use the #lang directive) and you're ready to crack on exercises.

### MIT Scheme
It just runs. But you're now in Unix X emulation land inside the venerable Edwin editor. If you have the gut, please go ahead and write down some instructions here.

### VIM
Having all of that to work in VIM seems a little more complicated. Some [Overflow instructions here](http://stackoverflow.com/questions/5352997/programming-schemeracket-with-vim-how-to-get-started) that I still have to try out.

### TDD with RackUnit
Racket comes equipped with a XUnit library for testing called [RacketUnit](http://docs.racket-lang.org/rackunit/quick-start.html) the examples there are pretty straightforward. I've created a simple script called racket in this folder that invokes the Racket interpreter with the filename given as an argument. You need to put Raket in your path:
      
      export PATH="/Applications/Racket v5.3.1/bin:$PATH"

And you should be good to go. Try chmod 755 racket if it seems not to be executable.
