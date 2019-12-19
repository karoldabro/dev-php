# library-dev-php
My workspace to easily develop php packages

## Features
- docker webdevops enviroment with php7.3  
- VS Code settings for xdebug  
## Usage
### Prepare enviroment
1. Open terminal.
2. Go to dedicated directory:  
```bash
cd your/dir/name
```
3. Clone this repo: 
```bash
git clone git@github.com:karoldabro/library-dev-php.git ./
```
4. Clone your repo. All package files should go to into *app* directory.
```bash
git clone yourrepourl ./app
```
### Setup docker
1. Make docker-compose network by:
```bash
docker-compose up -d
```
