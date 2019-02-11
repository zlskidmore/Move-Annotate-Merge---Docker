#Work from the latest Fedora linux.
FROM fedora:latest

#Grab updates.
RUN dnf install -y haskell-platform

#Grab libraries that MoveAnnotateMerge.hs requires.
RUN cabal update
RUN cabal install split
RUN cabal install process
RUN cabal install boxes
RUN cabal install regex-compat