import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

public class DniRucClient {
    private static final String TOKEN = "<token>";
    private static final String BASE_URL = "https://api.json.pe/api";
    private static final HttpClient CLIENT = HttpClient.newHttpClient();

    private static String call(String payload) throws Exception {
        HttpRequest request = HttpRequest.newBuilder()
                .uri(URI.create(BASE_URL + "/dni"))
                .header("Authorization", "Bearer " + TOKEN)
                .header("Content-Type", "application/json")
                .POST(HttpRequest.BodyPublishers.ofString(payload))
                .build();

        HttpResponse<String> response = CLIENT.send(request, HttpResponse.BodyHandlers.ofString());
        if (response.statusCode() >= 400) {
            throw new IllegalStateException("Error " + response.statusCode() + ": " + response.body());
        }
        return response.body();
    }

    public static void main(String[] args) throws Exception {
        System.out.println(call("{\"dni\":\"27427864\"}"));
    }
}
