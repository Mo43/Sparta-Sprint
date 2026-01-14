# Instructions for AWS App Deployment - Challenge 1 

## Key pairs and User Folder

    1. Search for EC2 on the AWS console. There is a resource tab in the EC2 where you have to select key pairs.

    2. create a new key pair, with a naming convention that is familiar and easy to find, for example:
    se-name-key-pair

    3. Once the private key is made it will be automatically downloaded to your computer. 
    Once it is downloaded you have to add it to your .ssh folder in your user folder and if the folder does not exist in your user folder you can create a folder called .ssh, for example:
    $cd C:\\Users\\matta\\.ssh

## Launching an Instance
    4. Click on the Launch Instance button on the EC2 dashboard and configure this page with the following steps:

    Name and Tags: follow a naming convention like this se-name-server

    Application and OS images: You have to select Ubuntu and leave the options default which will be Ubuntu 24.04 Free Tier version

    Instance Type: Leave it as default which should be t3.micro

    Key pair (login): this should be the keypair which was assigned initally in step 1.

    Network settings: For the network settings tab, first you have to click edit and change the security group name and description to the standard naming convention like explained in step 1 and 4.

    In the network settings tab, you should add 3 different security group rules and it should look like this:
  ![Group Rules](group%20rules.png)
    
    You leave storage settings and advanced details sections as default.

## Connecting to the Instance
    5. Now you can click on launch instance and you will be presented with an instance code.
    ![PNG2](png2%20.png)

    After you click on the instance code you will have a screen with the instance summary 
    where you can see that the instance state that you have created and that it is 
    successfully running.
    ![Running](running%20.png)

    Then on the instance summary page you need to select the connect button where you will be presented with instructions in order to connect to the instance. 

    Now you are ready to connect to your instance through your computer. You have to open gitbash,and navigate to your directory where you stored the private key.
    
    In my case it was “C:\\Users\\matta\\.ssh”. Using the cd command.

    Follow the instructions in order to connect to your instance on the aws website. Click the SSH client, you have to run 2 commands from the ssh section on aws website.

    Once in the directory in gitbash you have to save and run the provided script in order to launch nginx webserver onto the instance. 

    You can use nano to do this: 'sudo nano deploy-nginx.sh' and copy the script into this file and save it.

    Script: 
    
    \#\!/bin/bash  
    \# This script deploys an Nginx server using Docker.  
      
    \# update packages  
    sudo apt update \-y  
      
    \#upgrade packages  
    sudo apt upgrade \-y  
      
    \#get and install nginx  
    sudo apt install nginx \-y  
      
    \#restart nginx service  
    sudo systemctl restart nginx  
      
    \#enable nginx \- make it a startup process for the os  
    sudo systemctl enable nginx  
    













    


    









 



