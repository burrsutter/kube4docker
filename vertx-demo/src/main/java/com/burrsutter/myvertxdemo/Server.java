package com.burrsutter.myvertxdemo;

import io.vertx.core.AbstractVerticle;

public class Server extends AbstractVerticle {

  @Override
  public void start() {
    String hostname = System.getenv().getOrDefault("HOSTNAME", "unknown");
    vertx.createHttpServer()
        .requestHandler(req -> req.response().end("Hello Vert.x on " + hostname))
        .listen(8080);
  }

}
