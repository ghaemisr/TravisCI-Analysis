# Project-saraghaemi
This repository contains the codes for final project of CMPUT501 course. 

# About the project - An Analysis of Travis CI Build Failures
In this project, the goal is to find the most important reasons Travis CI build fail so that developers can try to evoid them. 

## Motivation 
Build failures in continuous integration are a signal that there has been a problem in the development process. These failures usually need rework and they may cause a delay in the project process. As a result, finding the reasons that builds fail can improve the whole process. Moreover, the result of such research can help developers grow habits that in long term reduces their development time. 

## Reaserch Questions:
The following are the research questions that are answered in this project 
* **RQ1:** What are the factors that influence Travis CI build status in general?
* **RQ2:** Does the average time between commits have a relationship with build failures?
* **RQ3:** Does the number of lines of codes that are changed influence the build status?
* **RQ4:** Is the size of a team related to build failures?
* **RQ5:** How are each of these factor influencing build failure?

## Dataset

The latest [TravisTorrent](https://travistorrent.testroots.org/) dataset has been used in this project. Since the dataset is large, we have not pushed the dataset file to github. In the beginning of the code, first we download the dataset, extract it, and then use it.

Beller M, Gousios G, Zaidman A. (2017) TravisTorrent: Synthesizing Travis CI and GitHub for Full-Stack Research on Continuous Integration
## More information

A detailed description of this project can be found in the [Documentation.pdf](https://github.com/cmput402-w19/project-saraghaemi/blob/master/Documentation.pdf) file. 


# How to run this code

This project is available as a docker image on docker hub. You should first have docker installed on you computer. You can find instructions on how to install docker on [docker website](https://docs.docker.com/). You can run the project using the follwoing steps.

I have used a computer with 12GB of RAM to run this code. Any computer or docker with smaller RAM may not be able to run the whole program.

### Step 1: Pulling the docker image from docker hub

```bash
docker pull ghaemisr/sq_final_project
```

### Step 2: Running the docker image
If you have any jupyter notebook open, close it before doing Step 2 and Step 3.

``` bash
docker run -it --rm -p 8888:8888 ghaemisr/sq_final_project
```
**Note:** If the 8888 port on your computer is busy, the above command may fail. If it failed, replace the first 8888 in the above command with an open port on your computer. 

### Step 3: Openning the Jupyter notebook

Open [this link](http://localhost:8888) to see the project in Jupyter Notebook.

**Note:** If you are not using your own computer and you are using a remote VM, you need to replace 'localhost' in the above link with that instance's IP.
