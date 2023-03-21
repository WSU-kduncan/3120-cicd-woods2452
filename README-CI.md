# Project 4
Halie Woods

## Objectives
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
    3. Run the `docker build` command. Ex: `docker build -t image:new`
- How do you run the container?
    - Start the container using the image that was built by using the `docker run command`. Ex: `docker run -it image:new`
- How do you view the project running in the container?
    1. Find the container ID by running the command `docker ps`
    2. Find the IP address of the container by using the `docker inspect` command. Ex: `docker inspect --format '{{ .NetworkSettings.IPAddress }}' <container_id>`
    3. Find the port number in the Dockerfile.
    4. Open a web browser and enter the IP address and port number of the container. Ex: `http://(IP address):(port number)`

### Resources
- [Containers Class Notes](https://github.com/pattonsgirl/CEG3120/blob/main/CourseNotes/containers.md#container-managers)

## Part 2 - GitHub Actions and DockerHub

## Part 3 - Diagramming


