#!/usr/bin/pup
# Install Flask Version 2.1.0
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
