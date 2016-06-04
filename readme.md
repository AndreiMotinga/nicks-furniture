### Static site boilerplate template.
[demo](http://am-mm-static.s3-website-us-west-2.amazonaws.com/)

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
middleman build --clean
middleman s3_sync
```
