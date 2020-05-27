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

User stories
- Create
    - I want to create a new user
    - I want to add a picture of myself for my profile
    - I want to create a review for a gym
    - ** I want to create a review for a coach
- Read
    - I want to search gyms by which equipment they have (barbells, squat racks, etc) and how many they have
    - I want to search gyms by which specialities they offer (through Coaches, ie jiu jitsu, power lifting, crossfit)
    - ** I want to search gyms by proximity via address
    - I want to search gyms based on whether they’re open (is_open boolean)
    - ** I want to search gyms by operating_hours
    - I want to see a list of coaches and their specialization
    - ** I want to know when a gym’s estimated reopening date will be, based on the gym location
- Update
    - Edit my review of a gym
    - ** Edit my review of a coach
- Delete
    - Delete reviews
    - Cancel Membership

VALIDATIONS
- Members
    - Name, presence, numbers/symbols
    - Age, can't be 0 
    - Address, can't be blank
    - Image_url, 
- Gym Review
    - rating, inclusion 1-5
    - content, 10-150 character
- Coach Review
    - rating, inclusion 1-5
    - content, 10-150 character