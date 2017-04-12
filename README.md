# Middleman Prototype with Airtable Data

This is simply a proof of concept. The idea is to pull data from [Airtable]
(so that it can be easily updated) into a static Middleman app for prototyping.

I created [a very simple Airtable base][base] to use as dummy data. Using the
Airtable API, along with the [middleman-data_source] extension, I can then use
that data [within my Middleman templates][data-files].

The key pieces that make this work are:

- The config for the middleman-data_source extension: [`config.rb#L23-L31`][config]
- The loop in the template to output the data: [`index.html.erb#L6-L12`][loop]

[View the page that gets output][output].

  [Airtable]: https://airtable.com/
  [base]: https://airtable.com/shrIlzC2qh7Hcd73K
  [middleman-data_source]: https://github.com/stevenosloan/middleman-data_source
  [data-files]: https://middlemanapp.com/advanced/data_files/
  [config]: https://github.com/tysongach/middleman-prototype-with-airtable-data/blob/master/config.rb#L23-L31
  [loop]: https://github.com/tysongach/middleman-prototype-with-airtable-data/blob/master/source/index.html.erb#L6-L12
  [output]: https://tysongach.github.io/middleman-prototype-with-airtable-data/

## Setup

1. Get the code:

    ```
    git clone https://github.com/tysongach/middleman-prototype-with-airtable-data.git
    ```

1. Set up your machine:

    ```
    bin/setup
    ```

1. Run the app:

    ```
    bundle exec middleman
    ```

    ```
    open http://localhost:4567
    ```
