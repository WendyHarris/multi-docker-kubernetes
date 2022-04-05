# multi-docker-kubernetes

## Overview

Created along with the https://ibm-learning.udemy.com/course/docker-and-kubernetes-the-complete-guide By: Stephen Grider.

Built a Fibonacci Calculator in React, that takes an index from the user and then calculates the value of that index in the Fibonacci sequence. The indexes are stored in a Postgres relational database and the results of the calculations are stored in a Redis server that acts as a cache. The calculations of the Fibonacci index are done by a separate nodejs worker that in sends the results to redis.

Built custom images using Docker and learned Docker CLI for debugging and inspecting running containers. Built a pipeline for CI + CD utilizing Github, Travis CI, AWS ElasticBeanstalk.

### Travis CI

Travis CI triggered by a commit/pull request to the main branch on Github, and being responsible for testing, building Docker images, pushing to Docker Hub, and deploying to AWS.

### Google Cloud 

Google Cloud the deployment makes use of a Google Cloud Load balancer, Ingress-Nginx
