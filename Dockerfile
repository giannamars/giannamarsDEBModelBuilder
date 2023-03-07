FROM kbase/sdkbase2:python
MAINTAINER KBase Developer
# -----------------------------------------
# In this section, you can install any system dependencies required
# to run your App.  For instance, you could place an apt-get update or
# install line here, a git checkout to download code, or run any other
# installation scripts.

RUN \
 apt-get update && \
 apt-get install wget && \
 wget https://julialang-s3.julialang.org/bin/linux/x64/1.6/julia-1.6.7-linux-x86_64.tar.gz && \
 tar zxvf julia-1.6.7-linux-x86_64.tar.gz && \
 cp -R julia-1.6.7 /kb/deployment/bin/. && \
 rm -r julia-1.6.7 && \
 rm - r julia-1.6.7-linux-x86_64.tar.gz 

 RUN julia -v 
 



# -----------------------------------------

COPY ./ /kb/module
RUN mkdir -p /kb/module/work
RUN chmod -R a+rw /kb/module

WORKDIR /kb/module

RUN make all

ENTRYPOINT [ "./scripts/entrypoint.sh" ]

CMD [ ]
