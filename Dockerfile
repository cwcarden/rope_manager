FROM debian

WORKDIR /

RUN apt update && apt install -y \
	locales \
	openssl

# Set the locale
RUN sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && locale-gen
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8 

COPY ./_build/prod/rel/rope_manager .

ENTRYPOINT ["/bin/rope_manager"]
CMD ["start_iex"]
