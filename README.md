# Wandering Tricia

#### _Nicky Santamaria_

## Description

An app to showcase photos by Tricia. Images can only be added by admin and reviews of images can be added by all other users.

## Technologies used / Prerequisites

* [Ruby](https://www.ruby-lang.org/en/downloads/)
* [Rails](http://rubyonrails.org/)
* [PostgreSQL](https://www.postgresql.org/docs/9.2/static/app-psql.html)
* [Git](https://git-scm.com/)

## Installation

* `$ git clone https://github.com/nrsantamaria/wanderingtricia`
* `$ cd wanderingtricia`

## PostgreSQL Integration
* `$ postgres`
* `$ rake db:create`
* `$ rake db:migrate db:test:prepare`

## Seed database
* `$ rake db:reset`

## Development server

Run `rails s` for a dev server. Navigate to `http://localhost:3000/`. The app will automatically reload if you change any of the source files.

## Specifications

| Behavior |  Input   |  Output  |
|----------|:--------:|:--------:|
|Admin user adds a image to database.|Name => 'Picture', Cost => '50', Description => 'Fancy picture.', Portfolio => 'Landscape'| Name: Picture, Cost: $50, Description: Fancy Picture, Portfolio: Landscape
|One-to-many database relationship. |User adds a review to a image.|Review is listed under a specific image.|
|Admin user updates image|Name: Picture, Edit Product Name => 'Pretty Picture'|Name: Pretty Picture|
|Admin user deletes image| Name: Picture, Delete Image|User is taken to profile|
|User can select different portfolio types to have specific images displayed on the landing page.|Portfolio: Landscape |Name: Picture, Portfolio: Landscape|
|Validates all fields are filled out.|Validate: name, cost, description, file|If description blank => Error: Must fill out description|

## Known Bugs
* N/A

## License

*This software is licensed under MIT license.*

```
Copyright (c) 2017 *Nicky Santamaria*
```
