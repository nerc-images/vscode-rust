FROM quay.io/opendatahub-contrib/workbench-images:vscode-datascience-c9s-py311_2023c_latest

RUN yum install -y \
  somthing
RUN pip install jupyterlab
RUN mkdir -p /opt/app-root/share/jupyter/kernels/something
RUN jupyter kernelspec install /opt/app-root/share/jupyter/kernels/something --name something
