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
# If git is initiated in your project
git submodule add https://github.com/karoldabro/dev-php.git .docker

# If your project do not have version controll
git clone https://github.com/karoldabro/dev-php.git .docker
```
4. (Optional) Copy .env file into your project catalog.
```bash
# If .env do not exists copy entire file
cp .docker/.env .env

# If .env exists append content to existing one
cat .docker/.env >> .env
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
## Examples
This repo contains many example files, with already setup configuration. You can easily use them in your project.
### PHP
#### composer.json
Remember to edit this file, change namespace and author. You can create your own by console command "composer init" but this contains useful libraries and configured namespaces.
```bash
cp .docker/.examples/.gitignore .
```
After this type:
```bash
composer update
```
#### phpunit.xml
This configuration contains divide your tests into: Unit and Integration, and configuration for test coverage.
```bash
cp .docker/.examples/phpunit.xml .
```
Remember to create tests directory:
```bash
mkdir tests && mkdir tests/Unit && mkdir tests/Integration
```
#### .gitignore
```bash
cp .docker/.examples/composer.json .
```

### VS Code
#### Default and configured vs code settings.json and xdebug lanuch.json
```bash
cp .docker/.vscode .vscode -r
```
