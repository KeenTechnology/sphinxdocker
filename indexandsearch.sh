#!/bin/bash

( cd /etc/sphinxsearch ; /usr/bin/indexer -c /etc/sphinxsearch/sphinx.conf --all )
( cd /etc/sphinxsearch ; /searchd.sh )
