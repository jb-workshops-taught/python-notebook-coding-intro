FROM jupyter/minimal-notebook

MAINTAINER Jenny Brown <jennybrown8@gmail.com>

# Lesson files for Code for Anyone course
COPY *.ipynb /home/jovyan/work
COPY *.html /home/jovyan/work
COPY *.css /home/jovyan/work
COPY TechCrunch.csv /home/jovyan/work
COPY README.md /home/jovyan/work

