# Lokka Redirect Host Plugin

If in the case of access from different hosts, You will be redirected to the host to expect.

## Installation

    $ cd LOKKA_ROOT/public/plugin
    $ git clone git://github.com/daic-h/lokka-redirect_host.git

## Usage

If you want to redirect

http://example.heroku.com/about or http://example.herokuapp.com/about

to

http://example.com/about

Set Environment variable REDIRECT_HOST

If you're using heroku

    % heroku config:add REDIRECT_HOST=example.com

## Acknowledge

This plugin is fork of champierre/lokka-redirect_if_heroku.


