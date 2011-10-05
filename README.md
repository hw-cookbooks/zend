Description
===========

Installs and configures [Zend Server Community Edition](http://www.zend.com/en/products/server-ce/)

Requirements
============

`apt` cookbook

Tested on Ubuntu 10.04

Attributes
==========

* `node[:zend][:php][:version]` - PHP version, defaults to `5.3`.

Usage
=====

Include the default recipe. 

To access the Administration Interface (Web) open your browser at:
<https://localhost:10082/ZendServer> (secure) or
<http://localhost:10081/ZendServer>.
