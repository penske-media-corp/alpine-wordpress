# alpine-wordpress
Builds alpine images from official WordPress images as a very thin layer to add only the most essential things which aren't on official releases.

It is meant to be built from remotely in a `docker-compose.yml` file along with a specifying build target declared in the `Dockerfile` of this repo.

```
wp:
	build:
		context: https://github.com/penske-media-corp/alpine-wordpress.git
		target: wp
		args:
			NGINX_VERSION: $NGINX_VERSION
			NODE_VERSION: $NODE_VERSION
			PHP_VERSION: $PHP_VERSION
			WEB_ROOT: $WEB_ROOT
			WORDPRESS_VERSION: $WORDPRESS_VERSION
```

You can build these images dynamically with different versions using any of the `ARGS` in the `Dockerfile`.

In development if xdebug is needed swap out the main `wp` image for the `test-php` image.
