package com.burrsutter.producer;

import io.vertx.core.Vertx;
import io.vertx.core.http.HttpServer;
public class MyMain {
    public static void main(String[] args) {
    
    final String hostname = System.getenv().getOrDefault("HOSTNAME", "unknown");

    Vertx vertx = Vertx.vertx();

    HttpServer httpServer = vertx.createHttpServer();

    httpServer.requestHandler(request -> {      
        request.response().end("Vert.x on " + hostname + "\n");      
       }).listen(8080);

    } // main
}