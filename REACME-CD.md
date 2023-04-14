# Project 5
Halie Woods

## Project Overview
- Implement semantic versioning for images using `git tag` metadata in Actions
- Use `webhooks` to keep production up to date

## Part 1 - Semantic Versioning
### Documentation
- How to generate a `tag` in `git` / GitHub
    1. Use `git commit` to commit an update to GitHub.
    2. Run the following command to create a new tag for the identified commit: `git tag -a v*.*.*`
    3. Push the new tag to Github by running the following command: `git push origin v*.*.*`
- Behavior of GitHub workflow
    - what does it do and when
        - When pushing a tag (`git push --tags`), three new images are pushed to Dockerhub. These three images include a MAJOR version, MAJOR.MINOR version, and a LATEST version.
- [Link to Docker Hub repository](https://hub.docker.com/repository/docker/woods245/ceg3120proj4/general)

### Resources
- [Semantic Versioning](https://semver.org/)
- [GitHub - docker/metadata-action](https://github.com/docker/metadata-action)
- [Docker - Manage Tag Labels](https://docs.docker.com/build/ci/github-actions/manage-tags-labels/)

## Part 2 - Deployment
### Documentation
- How to install Docker to your instance
    - I followed the directions from [docker.com](https://docs.docker.com/engine/install/ubuntu/).
- Container restart script
    - Justification & description of what it does
        1. Stops and removes the running container
        2. Pulls the latest image from DockerHub
        3. Starts a new container with the latest image
    - Where it should be on the instance (if someone were to use your setup)
        - `/home/ubuntu`
- Setting up a webhook on the instance
    - How to install adnanh's webhook to the instance
        - `sudo apt-get install webhook`
    - How to start the webhook
        - Create `webhook.conf` under `/etc` directory
        - Set up the file so it executes the `update-and-restart.sh` script when the configuration file is triggered
        - Run the following command to start the webhook: `sudo systemctl start webhook`
- webhook task definition file
    - Description and location: When the `webhook.conf` is loaded into the webhook program and a request is made to the configured endpoint, the program will execute the `update-and-restart.sh` script with the `/home/ubuntu/` directory. 
- How to configure GitHub to message the listener
    1. Go to `Webhooks` under `Settings`
    2. Press `Add webhook`
    3. Under `Payload URL` enter this URL: http://<EC2 elastic IP>:9000/hooks/redeploy-webhook
    4. Press `Add webhook` at the bottom to save the webhook

### Resources 
- [Using GitHub actions and webhooks](https://levelup.gitconnected.com/automated-deployment-using-docker-github-actions-and-webhooks-54018fc12e32)
- [Using DockerHub and webhooks](https://blog.devgenius.io/build-your-first-ci-cd-pipeline-using-docker-github-actions-and-webhooks-while-creating-your-own-da783110e151)

## Part 3 - Diagramming
![Continuous Deployment Diagram](./CDdiagram.jpg)

### Resource
- [Dev Genious](https://blog.devgenius.io/build-your-first-ci-cd-pipeline-using-docker-github-actions-and-webhooks-while-creating-your-own-da783110e151)