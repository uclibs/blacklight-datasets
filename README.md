# Blacklight Datasets

A test Blacklight instance for curating access to Datasets in Scholar@UC. 

### Solr Configuration

The purpose of the app is to display content from the Scholar@UC Solr index. Supply the Scholar Solr URL In the blacklight.yml; confirm the url for the solr-core to be displayed.

`/config/blacklight.yml`

### Run the app

1. Install
  `bundle install`
1. Setup database
  `rails db:migrate`
1. Start the app
  `rails s`
