import java.net.URI
import java.net.http.HttpClient
import java.net.http.HttpRequest
import java.net.http.HttpResponse

object DniRucClient {
    private const val TOKEN = "<token>"
    private val client = HttpClient.newHttpClient()

    private fun call(payload: String): String {
        val request = HttpRequest.newBuilder()
            .uri(URI.create("https://api.json.pe/api/dni"))
            .header("Authorization", "Bearer $TOKEN")
            .header("Content-Type", "application/json")
            .POST(HttpRequest.BodyPublishers.ofString(payload))
            .build()
        val response = client.send(request, HttpResponse.BodyHandlers.ofString())
        require(response.statusCode() < 400) { "Error ${response.statusCode()}: ${response.body()}" }
        return response.body()
    }

    @JvmStatic
    fun main(args: Array<String>) {
        println(call("{\"dni\":\"27427864\"}"))
    }
}
