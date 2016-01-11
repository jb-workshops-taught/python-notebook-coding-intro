FROM jupyter/minimal-notebook

MAINTAINER Jenny Brown <jennybrown8@gmail.com>

# Dependencies
pip install numpy
pip install pandas
pip install seaborn

# Lesson files for Code for Anyone course
COPY *.ipynb /home/jovyan/work/
COPY TechCrunch.csv /home/jovyan/work/
COPY README.md /home/jovyan/work/

