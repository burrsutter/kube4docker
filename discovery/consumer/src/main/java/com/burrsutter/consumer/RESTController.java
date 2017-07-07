package com.burrsutter.consumer;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.http.ResponseEntity;

@RestController
public class RESTController {
    final String hostname = System.getenv().getOrDefault("HOSTNAME", "unknown");

    RestTemplate restTemplate = new RestTemplate();

    @RequestMapping("/")
    public String index() {
        
        // if outside of Kubernetes/OpenShift, using the exposed route
        // String url = "http://producer-demo.192.168.99.104.nip.io/";
        // if inside of Kubernetes/Openshift, use the service name directly
        // (kubectl get services)
        String url = "http://producer:8080/";

        ResponseEntity<String> response
         = restTemplate.getForEntity(url, String.class);
        
        System.out.println(response.getBody());
        
        return "Hello from Spring Boot ! " + new java.util.Date() + " on " + hostname + "\n" 
        + " and from " + response.getBody();
    }

}