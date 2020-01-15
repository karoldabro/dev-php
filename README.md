# library-dev-php
My workspace to easily develop php packages. Added as gitsubmodule.

## Features
- Docker webdevops enviroment with php7.3.
- Example VS Code settings for xdebug.
- Example PHP project configuration.
- Copy ssh form given directory to make possible to use git inside the container.
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
4. Copy .env-example file into your project catalog and change it's name to .env.
```bash
cp .docker/.env-example .env
```
5. Fill .env file with your data.
### Setup docker
1. Make docker-compose network by:
```bash
docker-compose up -d
```
