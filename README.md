# Ruby on Rails Capstone Project: Redesign of Twitter

> In this project I built Dance opinion application based on a redesign of Twitter.  

Some of the advanced concepts explored in this project includes.
- Working with advanced associations, many-to-many relationships, a typical twitter follow and follower relationship model.
- Basic Authentication


## Since it is 'dockerised' you will need ot grant permissions
 ~~~bash
sudo chmod +x setup.sh
sudo chmod -R 777 frontend
~~~
![screenshot](./danceter.gif )

## Built With

- Ruby v3.2.2
- Ruby on Rails v7.2.1
- RSpec
 

## Live Demo

[Live Demo](https://danceter.herokuapp.com/)

## Video Presentation

[Video Link](https://youtu.be/PLhU1zXu0uU )


## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

Ruby: 3.2.2
Rails: 7.2.1
Postgres: >=13

### Setup

~~~bash
$ git clone https://github.com/vmwhoami/danceter
$ cd danceter
~~~

### ! Remember to do it inside a container
Install gems with:

```
bundle install
```

Setup database with:

> make sure you have postgress sql installed and running on your system

```
   rails db:create
   rails db:migrate
```

### Usage

Start server with:

```
    rails server
```

Open `http://localhost:3003/` in your browser.

### Run tests

```
    rpsec 
```

# Authors

👤 **Vitalie Melnic**

- Github: [@vmwhoami](https://github.com/vmwhoami)
- Twitter: [@vmwhoami](https://twitter.com/vmwhoami)
- Linkedin: [vitalie-melnic](https://www.linkedin.com/in/vitalie-melnic/)


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!


