FROM jekyll/jekyll:latest

ENV HOME "/home/jekylluser"
ENV GEM_HOME "$HOME/gems"
ENV PATH "$HOME/gems/bin:$PATH"

COPY . .

EXPOSE 4000

RUN gem install bundler

RUN chmod +rwx $GEM_HOME
RUN bundle update

CMD ["bundle", "exec", "jekyll", "serve", "--livereload", "--host", "0.0.0.0"]