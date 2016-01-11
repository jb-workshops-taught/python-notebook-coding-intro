FROM jupyter/minimal-notebook

MAINTAINER Jenny Brown <jennybrown8@gmail.com>

# Lesson files for Code for Anyone course
COPY *.ipynb /srv/tmpnb/
COPY *.html /srv/tmpnb/
COPY *.css /srv/tmpnb/
COPY TechCrunch.csv /srv/tmpnb/
COPY README.md /srv/tmpnb/

