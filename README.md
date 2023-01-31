# Meal Planner

How to run:

* Download and install Docker from [here](https://www.docker.com/).
* Download this code from [here](https://github.com/ValentinosGR/MealPlan/archive/refs/heads/main.zip) and extract or pull repository.
* Open command prompt from inside folder.
* Run command "docker-compose run --rm app rake db:create db:migrate".
* Run command "docker-compose up -d".
* Run command "docker-compose exec app bash".
* Run command "rails db:seed".
* Open in browser [localhost:3000](http://localhost:3000/)
* Login with email : "test@example.com" and password : "123456".
