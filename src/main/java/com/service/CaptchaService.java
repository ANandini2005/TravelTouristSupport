
package com.service;

import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;

@Service
public class CaptchaService {

    private static final String SECRET_KEY = "6LfHKG8qAAAAAFKhhOOlMm4uxo2tWKOaQ3TCeRPz";
    private static final String VERIFY_URL = "https://www.google.com/recaptcha/api/siteverify";

    public boolean verifyCaptcha(String captchaResponse) {
        RestTemplate restTemplate = new RestTemplate();

        MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
        params.add("secret", SECRET_KEY);
        params.add("response", captchaResponse);

        CaptchaResponse response = restTemplate.postForObject(VERIFY_URL, params, CaptchaResponse.class);
        return response != null && response.isSuccess();
    }

    private static class CaptchaResponse {
        private boolean success;

        public boolean isSuccess() {
            return success;
        }

        public void setSuccess(boolean success) {
            this.success = success;
        }
    }
}
