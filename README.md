# IaC Script

Infrastructure as Code (IaC) replace the manual process with code. The purpose is to create configuration files that include specifications about your infrastructure. Always guaranteeing the same provisioning.

## **Version Control**

Version control is an important part of IaC. This may be being done by Github. By deploying the infrastructure as code, you can separate it into modules that can be combined in different ways.

## **Main benefits**

The main benefits are time saving and standardization. IaC will provide and manage servers, operating systems, storage and others.

## **Rules (iac.sh)**

- Delete all previously created directories, files, groups and users.
- All provisioning must be done in a Bash Script file.
- Owner of all directories created will be the root user.
- All users will have full permissions on the public directory.
- Users in each group will have full permissions on their respective directories.
- Users cannot have read, write and execute permissions in directories of departments of which they are not part.

# IaC Web Script (iacweb.sh)

In this project I created a script where a web server is automatically provisioned. This includes infrastructure specifications, making it easier to edit and distribute configurations. IaC also ensures that the same environment is provisioned every time.

## **What is a Webserver?**

A webserver is software and hardware that uses HTTP (Hypertext Transfer Protocol) and other protocols to respond to client requests made over the World Wide Web.

## **What does it do?**

The main job of a web server is to serve website content by storing, processing and delivering web pages to users.
