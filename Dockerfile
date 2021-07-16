FROM jekyll/jekyll:latest

ENV HOME "/home/jekylluser"
ENV GEM_HOME "$HOME/gems"
ENV PATH "$HOME/gems/bin:$PATH"

COPY . .

RUN gem install bundler

RUN chmod +rwx $GEM_HOME
RUN bundle update


