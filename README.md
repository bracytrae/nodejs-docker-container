# Assignment #4: Application Containerization

This is a simple Node.js web application designed for learning Docker containerization concepts.

## Application Overview

This application is a basic Express.js web server that:
- Serves a static HTML page at the root (`/`)
- Provides an API status endpoint at `/api/status`
- Includes a health check endpoint at `/health`
- Runs on port 3000 by default (configurable via PORT environment variable)

## What's Included

- **app.js**: Main application server file
- **package.json**: Node.js dependencies and project configuration
- **public/index.html**: Static HTML page that confirms successful containerization
- **public/style.css**: Styling for the web page

## Running Without Docker (for reference only)

If you wanted to run this application directly (not required for assignment):
```bash
npm install
npm start
```

## Your Docker Assignment

**DO NOT MODIFY THE APPLICATION CODE**

Your task is to containerize this existing application using Docker. You need to:

1. Create a `Dockerfile` that properly containerizes this Node.js application
2. Build a Docker image from your Dockerfile
3. Run a container from your image
4. Verify the application works by accessing it in your browser

## Starting the Application

- To build the docker image run the command:

```bash

```

- To run your docker container in port 3000 run the command:

```bash

```

## Reflection Question
**Answer the following question in the space below**: How does containerization with Docker differ from using virtual machines, and why might a development team choose Docker containers over VMs for deploying applications like the one you just containerized?



## Application Requirements for Docker

Your Dockerfile should ensure:
- The application has Node.js runtime available
- All application files are copied into the container
- Dependencies are installed (`npm install`)
- Port 3000 is exposed
- The application starts with `npm start`
- The container can be accessed from your host machine

## Verification

When your Docker container is running correctly:
- Navigate to `http://localhost:3000` (or whatever port you mapped)
- You should see a success page confirming containerization worked
- The `/api/status` endpoint should return JSON status information

## Troubleshooting Tips

- Make sure your port mapping is correct in the `docker run` command
- Check that all files are copied into the container
- Verify Node.js dependencies are installed in the container
- Use `docker logs <container-name>` to see application output

## File Structure Expected
```
docker-assignment/
├── Dockerfile          # You create this
├── app.js              # Provided
├── package.json        # Provided
├── public/             # Provided
│   ├── index.html      # Provided
│   └── style.css       # Provided
└── README.md           # This file
```

Good luck with your Docker containerization!

### Starting the Application

Building the Docker "image":

```bash
docker build -t nodejs-docker-container .
```

Running the Docker "container":

```bash
docker run -d -p 3000:3000 nodejs-docker-container
```

After starting the container, open the following URLs:

- Application: http://localhost:3000
- API Status: http://localhost:3000/api/status

#### Reflection Question 

*How does containerization with Docker differ from using virtual machines, and why might a development team choose Docker containers over VMs for deploying applications like the one you just containerized?*

Docker containers and virtual machines both allow applications to run in isolated environments, but they function differently. Virtual machines create separate computer environments within a physical computer, where each virtual machine runs its own operating system. Docker containers do not require their own complete operating systems because they share an operating system kernel. This makes containers generally faster to start, more lightweight, and less resource-intensive than virtual machines.

Development teams might choose Docker containers over virtual machines because of their faster startup times, lower resource consumption, and ability to maintain consistency across different environments. These advantages are important in software development because they allow teams to deploy applications more efficiently while reducing compatibility issues. For example, Docker packages applications with their required dependencies, helping ensure that the application behaves consistently across different computers and deployment environments. This consistency has been known to improve application reliability by reducing errors caused by differences in software configurations, something that I thought was important to add.