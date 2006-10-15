#!/usr/bin/awk -f

BEGIN		{ FS = "\t" }
!/[0-9]+/	{ print "_____\n"; print $1; print $0; }
