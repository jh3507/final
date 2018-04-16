# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

*https://guides.railsgirls.com/devise
git push -u origin master
rails generate model goal name:string importance:integer
rails generate model plan name:string plan1:string plan2:string plan3:string plan4:string plan5:string plan6:string plan7:string plan8:

"""
rails g migration AddGoalRefToPlans goal:references
rails g migration AddUserRefToGoals user:references
"""