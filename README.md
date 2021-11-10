# caprover-installer
Easy install caprover server

This simple script will install caprover server on your OS

Just do:
`` sudo sh caprover-ubuntu-19-installer.sh ``

After install this caprover server, you may config a domain and continue install steps on your client by install caprover client installer:

## Configuring the domain
Next, we want to point our domain to our VPS.

First, we have to find the public (or external) IP address of our VPS. You will find that IP address easily on your VPS user interface:

![](https://blog.logrocket.com/wp-content/uploads/2021/05/CapRover-screenshot1.png)

Next, go to your domain registrar’s website. Login, and navigate to your domain’s DNS settings. We will use a subdomain that we will point to our VPS via an A record:

![](https://blog.logrocket.com/wp-content/uploads/2021/05/Caprover-Screenshot2.png)

We are using a wildcard subdomain here, which allows our applications to be accessible via yourApplicationName.server.yourDomainName.com (note that you don’t have to use .server here, you can use whatever name you want).

## Initializing CapRover from our personal system

On your personal laptop/desktop install :

`` npm i -g caprover``

Then execute :

`` $ caprover serversetup ``

Here is a sample output:

```shell
Setup CapRover machine on your server...

? have you already started CapRover container on your server? Yes
? IP address of your server: [yourIPAddress]
? CapRover server root domain: server.[yourDomainName].com
? new CapRover password (min 8 characters): [hidden]
? enter new CapRover password again: [hidden]
? "valid" email address to get certificate and enable HTTPS: [your@email.com]
? CapRover machine name, with whom the login credentials are stored locally: [yourCustomCapRoverMachineName]

CapRover server setup completed: it is available as [yourCustomCapRoverMachineName] at https://captain.server.[yourDomainName].com

For more details and docs see CapRover.com
```
After initialization, you can navigate to https://captain.server.[yourDomainName].com:

!()[https://blog.logrocket.com/wp-content/uploads/2021/05/Caprover-screenshot3.png]

Let’s log in with our new and secure password:

!()[https://blog.logrocket.com/wp-content/uploads/2021/05/CapRover-screenshot4.png]

Congratulations! Your CapRover PaaS is now up and running.


## Thanks
I was searching for powerfull caprover installation help and i found [Dominik Sobe](https://blog.logrocket.com/author/dominiksobe/) article
This repository is summary of [Dominik Sobe](https://blog.logrocket.com/author/dominiksobe/) solution
thanks from :

[Dominik Sobe](https://blog.logrocket.com/author/dominiksobe/) for best [caprover installation article](https://blog.logrocket.com/how-to-set-up-your-own-paas-with-caprover/)


