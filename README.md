docker-virtuoso-awscli
----------------------

Dockerfile for virtuoso-opensource with AWS CLI.

# Building

```
docker build -t `whoami`/virtuoso-awscli .
```

# Running

Prepare files for AWS config and credential. For example:

./aws/config

```
[default]
region=ap-northeast-1
output=json
```

./aws/credential

```
[default]
aws_access_key_id=AKI....
aws_secret_access_key=...
```

Then run the existing image with the content of the config/credential files as follows:

```
docker run -it --rm -p 8890:8890 `whoami`/virtuoso-awscli "`cat aws/config`" "`cat aws/credentials`"
```
