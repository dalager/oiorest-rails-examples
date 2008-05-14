# A Rails example app for oiorest #

Instead of you having to type up an application that uses the
[oiorest](http://github.com/dalager/oiorest/ "oiorest source code")
ActiveResource-based plugin, use this Rails app to try out oiorest.

## What is oiorest? ##

See the oiorest project page at GitHub:

[http://github.com/dalager/oiorest/tree/master](http://github.com/dalager/oiorest/tree/master "oiorest source code")

Oiorest in short: an experimental plugin for a project to help an
experiment with public Danish data about municipalities.

[oiorest at Google Code](http://code.google.com/p/oiorest/) has
some wiki information to be moved to GitHub.

## Getting started ##

You have checked out the source code, now run these commands to
install the plugin from source, and set up a database.

git-submodule init
git-submodule update
rake db:migrate

## How To Use the Examples ##

Start that server, run the application, and have a look.

 * Kommuner shows Denmark's municipalities with autocomplete
 * Regioner shows the larger areas of Denmark, and how they can request info about their contents

