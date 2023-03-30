# Project 4
Halie Woods

## Project Overview
- Containerize an application with Docker
- Automate the project pipeline with GitHub Actions - continuous integration

## Part 1 - Dockerize it
### Documentation
- How do you install Docker?
    - I installed Docker for Mac w/ Intel Chip
        - [install Docker Desktop](https://docs.docker.com/desktop/install/linux-install/)
- How do you build an image from the `Dockerfile`
    1. Create a Dockerfile that defines your image
    2. Open terminal and navigate to the directory where your Dockerfile is located
    3. Run the `docker build` command. Ex: `docker build -t image .`
- How do you run the container?
    - Start the container using the image that was built by using the `docker run command`. Ex: `docker run -d -p 80:80 image`
- How do you view the project running in the container?
    - Open a web browser and enter localhost:80

### Resources
- [Containers Class Notes](https://github.com/pattonsgirl/CEG3120/blob/main/CourseNotes/containers.md#container-managers)

## Part 2 - GitHub Actions and DockerHub
### Documentation
- What is the process to create public repo in DockerHub?
    1. Log in to docker.
    2. Tag docker image: `docker tag image_name username/repository_name:tag`
    3. Push the docker image to docker hub.
- How do you authenticate with DockerHub via CLI using Dockerhub credentials?
    - Log in to docker with the following command: `docker login`
    - What credentials would you recommend providing?
        - Enter your docker hub username and password when prompted.
- How do you push container image to Dockerhub (without GitHub Actions)?
    - Push the docker image to docker hub with the following command: `docker push username/repository_name:tag`
- Configuring GitHub Secrets
    - How to set a secret
        1. Go to your GitHub repository and click on `Settings` in the top right corner.
        2. Click on `Secrets` in the left sidebar.
        3. Click on `New repository secret` to create a new secret.
        4. Fill out the `Name` field with your secret name.
        5. In the `Secret` field, enter your secret.
        6. Click on `Add secret` to save the secret.
    - What secret(s) are set for this project?
        - We set our Docker Hub username and our Docker Hub password as secrets. 
- Behavior of GitHub workflow
    - what does it do and when
        - Github worflows allow you to automate common development tasks and enforce specific development practices within your team. They can be triggered by a variety of events such as a push to a specific branch, the creation of a pull request, or the creation of a new tag. You can also manually trigger a workflow using the Github web interface or the Github CLI.
    - what variables in workflow are custom to your project
        - think may need to be changed if someone else is going to use it or you reuse it


### Resources
- [Docker Docs - CICD with Github Actions](https://docs.docker.com/build/ci/github-actions/)
- [Github Actions - build-push-action documentation](https://github.com/marketplace/actions/build-and-push-docker-images)
- [Github - publishing images to DockerHub](https://docs.github.com/en/actions/publishing-packages/publishing-docker-images#publishing-images-to-docker-hub)

## Part 3 - Diagramming


