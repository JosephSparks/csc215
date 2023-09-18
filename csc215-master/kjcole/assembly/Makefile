#!/usr/bin/make -f
# Written by Kevin Cole <ubuntourist@hacdc.org> 2020.10.17 (kjc)
#
# See "pinfo make" -> Complex Makefile example
#
# This takes Altair-8800 assembler source files and produces:
#
#    - an object file       (.p)
#    - an Intel HEX file    (.hex)
#    - a  binary executable (.bin)
#    - a  list report file  (.lst)
#    - an include(?) file   (.inc)
#
# To use:
#
#        make         # to generate for all .asm files
# or     make root    # (where "root" is the root of a specific "root.asm")
# or     make clean   # to remove all generated files
#
############################################################################

SHELL = /bin/bash
SRCDIR = src
BINDIR = bin
DOCDIR = doc
OBJECTS := $(patsubst %.asm,%,$(wildcard *.asm))

.PHONY : all
all : $(OBJECTS)

#.PHONY : clean
#clean :
#	-rm -f	*.hex         \
#		*.bin         \
#		*.lst         \
#		*.inc         \
#		*.ps          \
#		*.p

.PHONY : clean
clean :
	@find . -name "*~"            -printf "Deleted: %f\n" -delete
	@find . -name "*.hex"         -printf "Deleted: %f\n" -delete
	@find . -name "*.bin"         -printf "Deleted: %f\n" -delete
	@find . -name "*.lst"         -printf "Deleted: %f\n" -delete
	@find . -name "*.inc"         -printf "Deleted: %f\n" -delete
	@find . -name "*.p"           -printf "Deleted: %f\n" -delete

% : %.asm
	asl -a -cpu 8080 -L -listradix 8 $<
	mv $@.lst $@.oct.lst
	asl -a -cpu 8080 -L -listradix 16 $<
	mv $@.lst $@.hex.lst
	p2hex $@.p
	p2bin $@.p
	mv $@.p $@.bin $@.hex $@.inc $(BINDIR)/
	mv $@.oct.lst $@.hex.lst $(DOCDIR)/
