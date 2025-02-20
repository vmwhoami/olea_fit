FROM ruby:3.2.2

ARG UID=1000
ARG GID=1000

# Install essential Linux packages
RUN apt-get update -qq && apt-get install -y postgresql-client

RUN groupadd -g $GID appgroup && useradd -u $UID -g appgroup -m appuser

# Set up working directory
WORKDIR /olea_fit
RUN chown -R appuser:appgroup /olea_fit

# Switch to root user temporarily to allow chown on Gemfile.lock
USER root

# Copy Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Ensure proper ownership for Gemfile.lock
RUN chown appuser:appgroup Gemfile.lock

# Switch back to appuser
USER appuser

# Install Rails
RUN gem install rails -v 8.0
RUN gem install rack-cors

# Install gems
RUN bundle install

# Copy the rest of the application code
COPY . .

# Precompile bootsnap code for faster boot times
RUN bundle exec bootsnap precompile --gemfile app/ lib/

# Switch to root user to change permissions on entrypoint.sh
USER root

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/

# Change permissions for entrypoint.sh
RUN chmod +x /usr/bin/entrypoint.sh

# Switch back to appuser
USER appuser

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
