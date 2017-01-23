# Siege Support Utilities

Author: <a href="mailto:bill.proud@nl.wanadoo.com">Bill Proud</a>

Partly based on Peter Hutnick's bombardment

## Docker image

Someone thoughtfully created a Docker image that lets you use this script with hardly any configuration (once you have Docker): https://github.com/klokantech/bombard-docker

## Usage

The siege support utilities consist of the following perl scripts all of which
should be installed in the same directory (such as /usr/local/bin):

prepdata	Processes the siege log outputting a file usable by siegechart
siegechart	Creates a set of charts in PNG format
bombard		Drives siege along with the other two scripts above

Notes:

1. Siegechart requires the following perl modules: Chart-2.x and GD-1.2x
1. Bombard requires a logfile entry and `logging = true` to be set in .siegerc

There are also the following man pages which can be installed in for example
`/usr/local/man/man1`:

* `siegechart.1`
* `bombard.1`


## Compiling

1. `apt-get install libgd-dev siege cpan` / `brew install cpan siege libgd`
1. `cpan install GD`
2. `cpan install Chart::Lines`
4. `./configure`
5. `make`
6. optional: `make install`
