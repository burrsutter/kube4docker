package com.burrsutter.myvertxdemo;

import io.vertx.core.AbstractVerticle;

public class Server extends AbstractVerticle {

  @Override
  public void start() {
    String hostname = System.getenv().getOrDefault("HOSTNAME", "unknown");
    vertx.createHttpServer()
        .requestHandler(req -> req.response().end("Bonjour Vert.x on " + hostname + " " + new java.util.Date()))
        .listen(8080);
  }

}
