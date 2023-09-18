# A Collection of Reveal.js Presentations

The [reveal.js](https://revealjs.com/) source is in a sibling directory to this
``csc205`` directory.  I created a symbolic link from inside the ``reveal.js``
directory to this one using:

  $ ln -s ../csc205/presentations csc205

and can now run the
[gulp webserver](https://www.npmjs.com/package/gulp-webserver) on the default
port 8000 and access these presentations at ``host:8000/csc205``.

## Resources

* [How to specify which reveal.js presentation to run from a local web server?](https://stackoverflow.com/questions/44980389/how-to-specify-which-reveal-js-presentation-to-run-from-a-local-web-server)
