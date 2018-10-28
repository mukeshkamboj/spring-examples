package spring.example.vault;


import javax.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.vault.annotation.VaultPropertySource;

@VaultPropertySource("database-cred")
@Configuration
public class VaultConfiguration {

  @Value("${username}")
  private String username;

  @Value("${password}")
  private String password;

  @PostConstruct
  private void postConstruct(){
    System.out.println("******************************");
    System.out.println(" username : " + username + " \n password : " + password);
    System.out.println("******************************");
  }

}