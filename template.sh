#!/bin/bash

f1="$(git rev-parse --abbrev-ref HEAD)"

touch f2

cat > f2 <<EOF

$f1

EOF

sed -i 's/\//-/g' f2

f2=$(cat f2)

touch $f2

cat > $f2 <<EOF

[This is a template for a proposal document. If you're using this template, all [square brackets] should be removed/replaced]

# [Title]

## Proposal Status

[Information about the state of the proposal. For example, the current status of the proposal and who are the authors of the proposal]

* Author(s): [Author Name, Co-Author Name]
* Date Proposed: [Date]
* Last Updated: [Date] 
* Date Closed: [TBD or Date]
* Status: [Status] - [Additional information about the status of the proposal.] 

## Background

[An introduction of the necessary background required for the readers and the problem being solved by the proposed change.]

## Motivation

[Reasons why this proposal is being made.]

## High Level Goals

[List of all high level goals the proposal is trying to address/fix.]

## Use Cases

[List of all possible scenarios the proposed changes will be used in.]

## Required Personnel and their Roles

[The list of all the personnel required to implement the proposal, the role of each personnel and a description of every role.]

### Roles

* [ROLE #1]
  * [USER #A]
  * [USER #B]
* [ROLE #2]
  * [USER #A]
  * [USER #C]

### Description of Roles

* [ROLE #1]
  * [DESCRIPTION #1]
  * [DESCRIPTION #2]
* [ROLE #2]
  * [DESCRIPTION #1]

## Proposal 

[The proposed changes.]

## Considerations

[Things that should be considered as discussions around this proposal are carried out (e.g. possible alternatives solutions, advantages and disadvantages, backwards compatibility, etc)]

## Work Plan

[A list or step-by-step plan for tasks that need to be carried out to implement the proposed changes.]

## Future Work

[Potential work that can be carried out after the proposed changes are implemented (e.g. features required for the next version)]

EOF

mv $f2 proposal/
