FROM jekyll/jekyll:latest

ENV HOME "/home/jekylluser"
ENV GEM_HOME "$HOME/gems"
ENV PATH "$HOME/gems/bin:$PATH"

COPY . .

RUN gem install bundler

EXPOSE 4000

RUN chmod +rwx $GEM_HOME
RUN bundle update


