Sentry on AWS
==================

Sentry is great tool for showing exceptions within your application.  This repo aims to setup a HA Sentry for use on AWS.

## Get Sentry
Sentry has a great [hosted service](https://getsentry.com/welcome/) with a free trial.  This self-hosted setup is  designed for companies that have large data or procurement restrictions.  This setup was originally made for BBC News.  I suggest you try the hosted version first.

## The Stacks

There are a few stacks here, split up in case you are using a custom database and cache solution.  This should provide maximum flexibility for those looking to use this setup.

There are security group stacks which will output ID's for use later in the setup of the individual components, as well as an RDS, Elasticache and EC2 component.  These are the required components for running Sentry.  If you are not bothered about losing data, you could run a single instance and run Redis and Postgres on the instance, but that isn't advised.


The stacks include URL based parameters, where configs will be downloaded from.  S3 is a good location, but can be from any URL, even a Github gist.


## Configs

Before you can spin up your stacks, you will need Sentry config files, specifically a sentry.conf.py and config.yaml.  These files can got from the sentry repo on github or generated with sentry.  If you are not inclined to install Python and Sentry on your computer, there is a docker image that will do it for you in the docker repo.

It is important that the config.yaml secret key is consistent across your instances, they are used for session data and you will not be able to log in with different keys.

#### Github Auth

Github auth is installed in this setup, so adding the following 2 lines to your config with a Github application, [instructions here](https://github.com/getsentry/sentry-auth-github), will enable log in via Github.
```
GITHUB_APP_ID = ""  
GITHUB_API_SECRET = ""
```
