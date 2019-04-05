FROM fsharp

ADD . /code
RUN chmod a+x /code/.paket/paket
RUN /code/.paket/paket

RUN cd /code && \
        ./.paket/paket.exe install && \
        fsharpc App.fs --staticlink:Suave

ENTRYPOINT ["mono", "/code/App.exe"]
