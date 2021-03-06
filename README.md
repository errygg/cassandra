Puppet Cassandra module (DSC)
==========================================

[![Build Status](https://secure.travis-ci.org/gini/puppet-cassandra.png)](http://travis-ci.org/gini/puppet-cassandra)

Overview
--------

Install Apache Cassandra from the [DataStax Community Edition] [1].

[1]: http://planetcassandra.org/


Usage
-----

#
# TODO - change these examples to support the ability to use different providers (don't need to specify seeds)
#

Simple example:

    class { 'cassandra':
      cluster_name => 'YourCassandraCluster',
      seeds        => [ '192.0.2.5', '192.0.2.23', '192.0.2.42', ],
    }


If you're running on Amazon EC2 (or a similar environment) you might want to set the `broadcast_address`
and the `endpoint_snitch` accordingly.

    class { 'cassandra':
      cluster_name      => 'YourEc2CassandraCluster',
      seeds             => [ '192.0.2.5', '192.0.2.23', '192.0.2.42', ],
      listen_address    => $ec2_local_ipv4,
      broadcast_address => $ec2_public_ipv4,
      endpoint_snitch   => 'Ec2MultiRegionSnitch',
    }


Supported Platforms
-------------------

The module has been tested on the following operating systems. Testing and patches for other platforms are welcome.

* Debian Linux 7.0 (Wheezy)


Support
-------

Please create bug reports and feature requests in [GitHub issues] [2].

[2]: https://github.com/gini/puppet-cassandra/issues


License
-------

Copyright (c) 2014 Open Book Ben, Inc.

