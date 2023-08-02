# System Architecture

## CPU Cores

Ghost CMS, like other Node.js applications, runs on a single thread of a single core by default. This is because JavaScript, the language Node.js is built with, is single-threaded due to its event-driven, non-blocking I/O model.

However, you can take advantage of multiple cores with Node.js (and therefore with Ghost CMS) by using its built-in cluster module or a process manager like PM2. The cluster module allows you to create child processes (workers) that run simultaneously and share the same server port. PM2, on the other hand, is a process manager for Node.js applications that provides features like load balancing between worker processes, automatic restarts, and a system for logging.

Despite this, many Ghost CMS deployments don't require such optimization. It's lightweight and designed to be speedy, and for many blogs and small to medium-sized sites, a single core should handle the load just fine. If you start getting enough traffic that you're worrying about maxing out a single core, that's a good problem to have and it might be time to consider more complex hosting solutions or optimizations.

Remember that using multi-threading won't make individual requests any faster - it just allows your server to handle more simultaneous requests. For a blog, most of your performance improvements will come from other areas, like caching, using a Content Delivery Network (CDN), optimizing images, and reducing the size of your CSS and JavaScript files
