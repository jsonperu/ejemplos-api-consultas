using System;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

class DniRucClient
{
    private const string Token = "<token>";
    private static readonly HttpClient Client = new();

    private static async Task<string> CallAsync(string payload)
    {
        using var request = new HttpRequestMessage(HttpMethod.Post, "https://api.json.pe/api/dni")
        {
            Content = new StringContent(payload, Encoding.UTF8, "application/json")
        };
        request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", Token);

        using var response = await Client.SendAsync(request);
        response.EnsureSuccessStatusCode();
        return await response.Content.ReadAsStringAsync();
    }

    public static async Task Main()
    {
        Console.WriteLine(await CallAsync("{\\"dni\\":\\"27427864\\"}"));
    }
}
