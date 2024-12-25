# Spring 3 MVC (xml) Skeleton

Maven application: Spring 3 MVC using XML-config.

## Status: Complete - Work OK

## Components

- Maven 2 or 3
- Spring MVC v3.2.0
- Spring Security v3.1.3
- Thymeleaf v2.0.14
- Bootstrap v2.3.1
- jQuery v1.9.0

## Features

- Login & Sign up pages to access to the application.
- Remember me mechanism.
- Internationalization (i18n).
- Simple CRUD operations over two tables: Users with roles.

## Building

- Create a new schema 'APPUSERS' on Oracle XE Database.
- Execute the sql script 'oracle_script.sql' or let hibernate to create it automatically.

- $ mvn clean
- $ mvn compile

## Running

$ mvn jetty:run -Djetty.port=8800

## Accesing the application

http://localhost:8800/spring3mvc-xml
