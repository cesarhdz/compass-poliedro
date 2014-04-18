# Compass::Poliedro

CSS grid generator made with intelligent selectors in mind. Main features:

- __Multiple grid definitions__ support.
- __Responsive Grid:__ every definition is independent and can be placed inside media queries.
- __Less bloated html:__ all block elements might be rows, including columns [^omega].
- __Intelligent Selectors__ support through placeholders. 
- __Fully customizable__: selector, gutter, prefix and column number are configurable.
- Utility classes 
    -  ~offset-x~ move the column x column-width. 
    -  ~omega~  declares the last column of the row
    -  ~center~ Center the column
    - ~push~ change column order 
    - ~break~ Insert a row break, 

[See  Poliedro in action](http://cesarhdz.github.io/compass-poliedro)
 

<!-- 
- Rapid prototyping??

- _Consistent columns_ All columns share the %poliedro_column abstraction which provides a _consistent layout_.

@TODO Margin can be variable, fom 0 to 7% for 12 columns or from 0 to 5% for 15 columns.

@TODO rtl support
 
-->

[^omega]: ~omega~ columns must be declared explicitly, it's an small price to ged rid of rows.

## Installation

Add this line to your compass application's Gemfile: 

    gem 'compass-poliedro', :git -> 


then

    $ bundle

And finally, in compass config file

    # config.rb
    require 'compass-poliedro'


## Usage
<!-- @MOVE to wiki? -->

Import poliedro in your styles

    // main.scss
    @import 'poliedro';

### Grids

Poliedro doesn't create any grid, you must generate them using ~poliedro-grid~ mixin.

    @include poliedro-grid($prefix, $gutter, $columns);

You can create the grids you need as long as they have different prefixes. Grids can be placed inside media queries. See wiki for more info on using poliedro-grid.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


### Development

In dev mode Poliedro requires node.js and npm, because of grunt and livereload. These are the commands to have Poliedro running:

    $ npm install
    $ bundle
    $ bundle exec rake run

Then open your browser in

    http://localhost:4000