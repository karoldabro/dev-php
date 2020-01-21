# library-dev-php
My workspace to easily develop php packages. Added as gitsubmodule.

## Features
- Docker webdevops enviroment with php7.3.
- Example VS Code settings for xdebug.
- Example PHP project configuration.
- Copy ssh form given directory to make possible to use git inside the container.
- Make file to manage creation
## Usage
### Prepare enviroment
1. Open terminal.
2. Go to you project directory:  
```bash
cd your/project/dir/name
```
3. Clone this repo: 
```bash
git submodule add git@github.com:karoldabro/library-dev-php.git .docker
```
4. (Optional) Copy .env file into your project catalog.
```bash
cp .docker/.env .env
```
5. (Optional) Copy Makefile into your project catalog.
```bash
cp .docker/Makefile .
```
6. (Optional) Fill .env file with your data.
### Use it
#### Up docker-compose network by:
```bash
# By Makefile
make

# By docker-compose
docker-compose -f .docker/docker-compose.yml up -d
```
#### Down docker-compose network by:
```bash
# By Makefile
make down

# By docker-compose
docker-compose -f .docker/docker-compose.yml down
```
#### Exec container shell by:
```bash
# By Makefile
make shell

# By docker-compose
docker-compose -f .docker/docker-compose.yml exec server sh -c "cd /app && /bin/zsh"
```