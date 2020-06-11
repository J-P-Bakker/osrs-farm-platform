## OSRS account creator and manager
A setup to create accounts and save them in a "persistent" database

## Motivation
Just giving it a try to setup the basis of a goldfarm backend

## Features
Create new accounts and save them to a database

## Code Example
Show what the library does as concisely as possible, developers should be able to figure out **how** your project solves their problem by looking at the code example. Make sure the API you are showing off is obvious, and that your code is short and concise.

## Installation
Provide step by step series of examples and explanations about how to get a development env running.
* Install Docker
  * To install docker on ubuntu follow [docker on ubuntu 20.04](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04)
    * or use install.sh
        ```bash
        sudo ./install.sh
        ```
  * If not using root make sure to add your user to the docker group (See step 2 in link)
  
    * add current user to docker group
        ```bash
        sudo usermod -aG docker ${USER}
        ```
    * relog into current user
        ```bash
        su - ${USER}
        ```
* Pull repo
* start docker containers (with docker-compose)
* start account creator script

## Tests
Describe and show how to run the tests with code examples.

## How to use?
If people like your project they’ll want to learn how they can use it. To do so include step by step guide to use your project.

### 0. Pull git repo
```bash
git pull https://github.com/J-P-Bakker/osrs-farm-platform.git
```

### 1. Setup basic environment files

<details>
  <summary>database.env</summary>
  
File containing basic variables for the postgres database
```bash
# database.env
POSTGRES_USER=master
POSTGRES_PASSWORD=master
POSTGRES_DB=accounts
```
</details>

### 2. Run docker-compose
```bash
USERNAME="$(whoami)" docker-compose --file docker-compose.yml up --detach
```

### 3. Start account creator
python script for account creator

## License
A short snippet describing the license (MIT, Apache etc)

MIT © [Jop Bakker](https://gist.github.com/J-P-Bakker)