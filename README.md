# USS Berners-Lee
USS Berners-Lee Angular site

# Deployment
```bash
$ sudo bash ./bin/generate-le-cert.sh
# update Amazon DNS settings
$ npm run build
$ sudo bash ./bin/generate-le-cert.sh
$ sudo bash ./bin/docker-build.sh
$ sudo bash ./bin/aws-deploy.sh
```

# Documentation
[Deploying Using Docker and Nginx](https://levelup.gitconnected.com/deploying-your-ui-applications-using-docker-and-nginx-b65ffa8f744e)

[Deploying Applications using LetsEncrypt](https://levelup.gitconnected.com/deploying-ssl-enabled-react-angular-vue-applications-to-aws-using-lets-encrypt-a7aff5a417ee)