print("hello")

LAB PROGRAM 1

*first, create devops folder and then in that folder create another dockerimage folder 

*next, in dockerimage folder open in vs code in that create 2 files: 1)dockerfile 2)sample.py file

*in docker file :
FROM python

WORKDIR /app

COPY . /app

CMD ["python", "sample.py"]

*in sample.py file:

print("Hello")

*in command line of terminal:
docker build -t test_1 .
docker run --name cont1 test_1
docker image tag sha256:b96759262efc576e7f19f8387d5e18ea558e11e7501a02e1e57cadd02ed0a228 gowdaharsham0503/test_1
docker push gowdaharsham0503/test_1:latest

*in docker desktop go to docker hub and search gowdaharsham0503/test_1
*it should show created docker image file

 
