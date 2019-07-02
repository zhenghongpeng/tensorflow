COPY bashrc /etc/bash.bashrc
RUN chmod a+rwx /etc/bash.bashrc
RUN mkdir -p /tf/app && chmod -R a+rwx /tf/
WORKDIR /tf/app
Add app /tf/app
COPY requirements.txt /tf/app/requirements.txt && chmod -R a+rwx /tf/app/requirements.txt
RUN pip install -r /tf/app/requirements.txt
WORKDIR /tf

