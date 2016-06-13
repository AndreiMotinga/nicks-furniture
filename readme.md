### Static site boilerplate template.
[nicks-furniture.com/](http://www.nicks-furniture.com.s3-website-us-west-2.amazonaws.com/)

### Stack
Middleman

#### Deployment
1. Create bucket
2. Create `.env` file with

```
AWS_ACCESS_KEY_ID=xxxxxxxxxxxxxxxxxxxx
AWS_SECRET_ACCESS_KEY=xxxxxxxxxxxxxxxxxxxx
BUCKET=xxxxxxxxxxxx
```

3. run
```
./deploy.sh
```

#### Todo
  1. update email in contact form
  2. create api at ezworks.online to handle contact forms.
