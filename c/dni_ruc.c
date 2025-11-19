#include <curl/curl.h>
#include <stdio.h>

static const char *TOKEN = "<token>";

void call(const char *payload) {
    CURL *curl = curl_easy_init();
    if (!curl) {
        fprintf(stderr, "No se pudo inicializar CURL\n");
        return;
    }

    struct curl_slist *headers = NULL;
    char auth[256];
    snprintf(auth, sizeof auth, "Authorization: Bearer %s", TOKEN);
    headers = curl_slist_append(headers, auth);
    headers = curl_slist_append(headers, "Content-Type: application/json");

    curl_easy_setopt(curl, CURLOPT_URL, "https://api.json.pe/api/dni");
    curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headers);
    curl_easy_setopt(curl, CURLOPT_POSTFIELDS, payload);
    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, NULL);
    CURLcode res = curl_easy_perform(curl);
    if (res != CURLE_OK) {
        fprintf(stderr, "Error: %s\n", curl_easy_strerror(res));
    }

    curl_slist_free_all(headers);
    curl_easy_cleanup(curl);
}

int main(void) {
    call("{\\"dni\\":\\"27427864\\"}");
    return 0;
}
