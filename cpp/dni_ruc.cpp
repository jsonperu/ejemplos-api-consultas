#include <curl/curl.h>
#include <iostream>
#include <string>

const std::string TOKEN = "<token>";

static size_t WriteCallback(void *contents, size_t size, size_t nmemb, void *userp) {
    size_t total = size * nmemb;
    static_cast<std::string *>(userp)->append(static_cast<char *>(contents), total);
    return total;
}

void call(const std::string &payload) {
    CURL *curl = curl_easy_init();
    if (!curl) throw std::runtime_error("CURL init failed");

    std::string response;
    struct curl_slist *headers = nullptr;
    headers = curl_slist_append(headers, ("Authorization: Bearer " + TOKEN).c_str());
    headers = curl_slist_append(headers, "Content-Type: application/json");

    curl_easy_setopt(curl, CURLOPT_URL, "https://api.json.pe/api/dni");
    curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headers);
    curl_easy_setopt(curl, CURLOPT_POSTFIELDS, payload.c_str());
    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
    curl_easy_setopt(curl, CURLOPT_WRITEDATA, &response);

    CURLcode res = curl_easy_perform(curl);
    if (res != CURLE_OK) {
        throw std::runtime_error(curl_easy_strerror(res));
    }

    std::cout << response << std::endl;
    curl_slist_free_all(headers);
    curl_easy_cleanup(curl);
}

int main() {
    call("{\\"dni\\":\\"27427864\\"}");
    return 0;
}
