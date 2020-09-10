# Car Rental System

* Ruby on Rails (RoR): Ruby version: ```2.6.1```, Rails version: ```6.0.3```. Ruby is programming language and Rails is web framework only support to Ruby. Both are open source.
* Database: ```SQLite3```

* Install ```RoR```: https://gorails.com/setup/osx/10.15-catalina (Include instruction for MacOS, Ubuntu and Windows)
  - NOTE: **we should use Rbenv or RVM** (2 Ruby Version Management tools - same NPM in NodeJS) **to manage Ruby versions**. E.g: when use are developer in 2 Ruby projects: one version 2.2.x, another one version 2.3.x. There is no way to change flexibility between two Ruby version. There is only accepted one Ruby version at one time without Rbenv or RVM.

* Build local environment:
  - When build Ruby on Rails environment, we need to do it via ```commandline```. 
    1. For window: click on start button in the bottom left, then type ```cmd``` and enter.
    2. Ubuntu: find ```terminal``` application
    3. MacOS: also find ```terminal``` application
  - Clone repository from branch **master**: ```git clone git@github.com:niick7/CarRentalSystem.git```
  - Change directory to CarRentalSystem repository: 
    1. For MacOs/Ubuntu: ```cd CarRentalSystem```
    2. For Window: ```cd path\to\CarRentalSystem``` directory/folder
    
  - Bundler is a gem used to manage libs in one Ruby on Rails application: ```gem install bundler```
  - Install rails libraries:  ```bundle install```
  
  #### DB
  - Create database:        ```rails db:create```
  - Create database schema: ```rails db:migrate```
  - Create dummy data:      ```rails db:seed```
  
  - In case want to update with new dummy data: rails db:drop . Then re-setup only for DB.

* Launch server: ```rails s``` # Local web server will be launched with port default is ```3000```

* Use web browser to enter local web server via link: http://localhost:3000

* The login credentials are in ```db/seeds.rb``` folder with 2 roles: ```admin``` and ```renter```

* If any issues relate to set up RoR environment, please contact: ```niick7@gmail.com - Nhan``` for supporting.
