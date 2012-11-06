##
## doc/Makefile.am
##
## Copyright (C) 2000, 2001, 2002 by
## Jeffrey Fulmer - <jdfulmer@armstrong.com>
## This file is distributed as part of Bombard
##
## This program is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 2 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program; if not, write to the Free Software
## Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
##

AUTOMAKE_OPTIONS  =    foreign no-dependencies 

EXTRA_DIST        =    bombard.1.in siegechart.1.in 

DISTCLEANFILES    =    $(man_MANS)

man_MANS          =    bombard.1 siegechart.1

all: bombard.1

bombard.1:
	@list='$(man_MANS)'; for p in $$list; do \
	if test -f $$p.in; then \
	  sed -e "s/%_DATE%/$(DATE)/"      \
	      -e "s/%_VERSION%/$(VERSION)/"  \
	      -e "s|%_PERL%|#!$(PERL)|"< $$p.in > $$p; \
	else :; fi; \
	done 

clean:
	rm -f $(DISTCLEANFILES)
