LastPass Confluence SAML Plugin
===============================

The LastPass Confluence SAML Plugin enables SAML 2.0 single-sign-on to
hosted Confluence applications.  This implements the Service Provider
interface for SAML Authentication.

What do I need to use it?
-------------------------

You will need a recent hosted Atlassian Confluence installation.  This
has been tested with version 6.10.

You will also need a SAML IdP provider.  If you do not have one,
we suggest our own IdP service, part of LastPass Enterprise,
at https://lastpass.com/.

Building the Plugin from Source
-------------------------------

You must first install Atlassian Confluence, and set the confluence.home.dir
in the build.xml to match its location.

To install:

    $ ant && sudo ant install

See the INSTALL file for additional details.
