# Turbo Stimulus Hotwire Demo

This README provides an overview of the steps necessary to get your Ruby on Rails application up and running. It covers important details about the application's setup and functionality.

## Ruby and Rails Versions

- Ruby version: 3.1.2
- Rails version: 7.0.8

## Database

- Database: MySQL (Make sure you have MySQL installed and configured)

## Features

### User Authentication

The application includes user authentication features, allowing users to sign up and log in using Turbo.

### Post CRUD Operations

Users can create, read, update, and delete posts using Turbo and Stimulus. These operations provide a seamless and interactive experience.

### Post Listing

The application displays a list of all posts and allows users to view posts created by a specific user. Turbo Frames are used to efficiently update and display posts.

### Session Management

The application manages user sessions, ensuring that users remain logged in until they choose to log out.

## Getting Started

Follow these steps to set up and run the application on your local machine:

## **Clone the Repository**

   git clone https://github.com/PriyaTecOrb/turbo_stimulus_post_curd.git

## Install Dependencies

  bundle install

## Database Setup
  
   rails db:create
   rails db:migrate