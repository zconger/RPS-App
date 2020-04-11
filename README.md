# RPS-App
This is a simple flask app that was built was originally built for spinnaker-hackaton

The intent was to create an image that would utilize a few environment variables.

Then deploy the app into a kubernetes cluster, with a matching configmap.  See k8s manifests in gitops/manifests

A sample Spinnaker pipeline is also saved in the gitops/pipelines folder 

## How to build the image: 
Dockerfile will create a docker image of the Flask App /RPS-App

`docker build -t rps .`

## Environment Variables:

`RPS_USER` - this is username that gets displayed
`RPS_VERSION` - just a version number that gets added to v0.1.2+
`RPS_WEBPORT` - if specified determines which port the app runs.  