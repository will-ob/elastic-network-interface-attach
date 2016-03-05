
`elastic-network-interface-attach`
======================

Docker container to auto-attach an elastic network interface (eni) to the host instance.

Inspired by [YoApp/elastic-ip-attach](https://github.com/YoApp/elastic-ip-attach).

Usage
---------

First, create a new elastic network interface.
Then run the following on the box

```
docker run --rm will-ob/elastic-network-interface-attach /bin/elastic-network-attach \
  --interface-id eni-91bfedc \
  --device-index 1
```

You may wish to do this in a [unit file](https://github.com/will-ob/elastic-network-interface-attach/blob/master/examples/unit.service) (systemd).


Notes
--------

Operation not permitted error - make sure your instance has a profile that allows it to attach / detach network interfaces.


License
-----------

Copyright 2016 Will O'Brien

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


