.PHONY: all deploy clean

all: deploy

deploy:
	aws --region us-west-2 s3 sync --exclude *.old cloudformation/ s3://pahud-cfn-us-west-2/devops-demo/cloudformation/

clean:
	echo "done"
