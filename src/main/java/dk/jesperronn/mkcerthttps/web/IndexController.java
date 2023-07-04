package dk.jesperronn.mkcerthttps.web;

import static org.springframework.util.MimeTypeUtils.TEXT_PLAIN_VALUE;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class IndexController {

  @GetMapping(value = "/", produces = TEXT_PLAIN_VALUE)
  @ResponseBody
  public String index() {
    return "hello /index controller action";
  }
}
