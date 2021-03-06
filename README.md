# Jungle

A mini e-commerce application to show ability to contribute to an existing project.

## Technologies and Frameworks

### Test

- rspec
- phantomjs
- capybara

### Front End

- erb
- HTML/CSS
- SASS

### Back End

- Rails
- Ruby
- bcrypt
- SQL

## Screenshots

![Home Page](https://github.com/sockbot/jungle-rails/blob/master/docs/home_page.png)
![Product Show](https://github.com/sockbot/jungle-rails/blob/master/docs/product_show.png)
![Admin Product Index](https://github.com/sockbot/jungle-rails/blob/master/docs/admin_product_index.png)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

## How it works

A user can browse products, add to cart, and checkout. The inventory and user data is persistent stored on a server in a PostgreSQL database. User passwords are encrypted.

An administrator has further access to pages to add and remove products from the store. The administrator pages are hidden behind a class requiring authorization from hard-coded admin credentials.
