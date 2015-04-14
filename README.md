Kyoto Cabinet
=============
[![Build Status](https://travis-ci.org/marshall-lee/kyotocabinet-ruby.svg)](https://travis-ci.org/marshall-lee/kyotocabinet-ruby)

In this repo i try to reanimate a [kyotocabinet-ruby gem](https://rubygems.org/gems/kyotocabinet-ruby). Reanimated version is [here](https://rubygems.org/gems/kyotocabinet-ruby-reanimated).

1. All available versions of kyotocabinet-ruby were imported from http://fallabs.com/kyotocabinet/rubypkg/ to the separate git branches.
2. All deprecated stuff and old-fashion work with GVL was removed. Now the gem is buildable on all modern versions of MRI Ruby (1.9.3 - 2.2.1).
   See [#1](https://github.com/marshall-lee/kyotocabinet-ruby/pull/1), [#2](https://github.com/marshall-lee/kyotocabinet-ruby/pull/2) and [#3](https://github.com/marshall-lee/kyotocabinet-ruby/pull/3).
3. [.travis.yml](.travis.yml) was added for confidence.

To use it just add this line to your Gemfile:

```ruby
gem 'kyotocabinet-ruby-reanimated', github: 'marshall-lee/kyotocabinet-ruby', branch: '1-32'
```

Or this way:

```ruby
gem 'kyotocabinet-ruby-reanimated'
```

Also you may want to read the original [README](README).
