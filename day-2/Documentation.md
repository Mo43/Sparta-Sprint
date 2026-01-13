# Instructions for AWS app deployment - Challenge 1 

## Key pairs and User Folder
    1. Search for EC2 on the AWS console. There is a resource tab in the EC2 where you have to select key pairs and create a new key pair, with a naming convention that is familiar and easy to find, for example: 
```
se-name-key-pair
```
    Once the private key is made it will be automatically downloaded to your computer. Once it is downloaded you have to add it to your .ssh folder in your user folder and if the folder does not exist in your user folder you can create a folder called .ssh, for example:
``` 
$cd C:\\Users\\matta\\.ssh
``` 
## Launching an Instance
    3. Click on the Launch Instance button on the EC2 dashboard and configure this page with the following steps:

    Name and Tags: follow a naming convention like this se-name-server

    Application and OS images: You have to select Ubuntu and leave the options default which will be Ubuntu 24.04 Free Tier version

    Instance Type: Leave it as default which should be t3.micro

    Key pair (login): this should be the keypair which was assigned initally in step 1.

    Network settings: For the network settings tab, first you have to click edit and change the security group name and description to the standard naming convention like explained in step 1 and 3. 

    In the network settings tab, you should add 3 different security group rules and it should look like this:
    ![This is an alt text.](grouprules. "This is a sample image.")




    You leave storage settings and advanced details sections as default.  









    


    









 



