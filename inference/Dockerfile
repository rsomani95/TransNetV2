FROM tensorflow/tensorflow:2.1.1-gpu

RUN pip3 --no-cache-dir install \
    Pillow \
    ffmpeg-python

# Build Env
RUN apt-get install -y wget 

# ============ JUPYTER SETUP - THEMES, EXTENSIONS =========== #

# Expose port for Jupyter
EXPOSE 8889

# Custom Dark (Ocean) Theme
WORKDIR /root/.jupyter/
RUN mkdir custom
WORKDIR /root/.jupyter/custom
RUN wget https://raw.githubusercontent.com/rsomani95/jupyter-custom-theme/master/custom.css
WORKDIR /root/.ipython/profile_default/startup
RUN wget https://raw.githubusercontent.com/rsomani95/jupyter-custom-theme/master/startup.ipy
WORKDIR /root


# Jupyter Extensions
RUN pip install ipywidgets ipyannotations ipyvuetify ipyevents nbdime ipywidgets jupyterthemes jupyter_contrib_nbextensions && \
    jupyter nbextension enable --py widgetsnbextension && \
    jupyter nbextension enable --py --sys-prefix ipyvuetify && \
    jupyter nbextension enable --py --sys-prefix ipyevents && \
    jupyter contrib nbextension install --user && \
    jupyter nbextension install https://github.com/drillan/jupyter-black/archive/master.zip --user && \
    jupyter nbextension enable jupyter-black-master/jupyter-black && \
    jupyter nbextension enable collapsible_headings/main --sys-prefix && \
    pip install notebook==5.7.8

#RUN apt-get update && apt-get install -y --no-install-recommends \
#    ffmpeg

# COPY setup.py /tmp
# COPY inference /tmp/inference

# RUN apt update
# RUN apt install -y ffmpeg

# RUN cd /tmp && python3 setup.py install && rm -r *
CMD ["/bin/bash"]
