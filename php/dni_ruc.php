<?php
$token = '<token>';
$baseUrl = 'https://api.json.pe/api';

function callJsonPe(array $payload, string $token, string $baseUrl): string
{
    $ch = curl_init();
    curl_setopt_array($ch, [
        CURLOPT_URL => "$baseUrl/dni",
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_POST => true,
        CURLOPT_HTTPHEADER => [
            "Authorization: Bearer $token",
            'Content-Type: application/json'
        ],
        CURLOPT_POSTFIELDS => json_encode($payload, JSON_THROW_ON_ERROR)
    ]);

    $response = curl_exec($ch);
    if ($response === false) {
        throw new RuntimeException(curl_error($ch));
    }

    $status = curl_getinfo($ch, CURLINFO_RESPONSE_CODE);
    curl_close($ch);

    if ($status >= 400) {
        throw new RuntimeException("Error $status: $response");
    }

    return $response;
}

echo callJsonPe(['dni' => '27427864'], $token, $baseUrl) . "\n";
