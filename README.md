# CCD Kubernetes Stack
Run CCD and supporting applications in a standalone deployment

## Purpose
The purpose of this project is twofold:
* to ultimately produce a generic deployment of CCD (either YAML or Helm) for teams to be able to reuse
* demonstrate ways to customise the deployment to specific needs

## Contents
### Dockerfiles
This folder contains sample Dockerfiles for supporting applications, such as Postgres and ccd-importer.

### Manifests
This contains raw Kubernetes manifests that should be deployable in their current state to any cluster (provided the cluster as access to the regisries)

## To Do
See the Github project: https://github.com/hmcts/cnp-ccd-aks/projects/1

## Contributing
To contribute you can:
* Try it out!
* pick up a task in the project
* submit a PR

## IMPORTANT
If you want to experiment:
* please do so on the __SANDBOX__ cluster only.
* change the YAML to deploy into __your own namespace__.

Remember the idea is produce a __generic__ component here, so keep that in mind when making contributions.