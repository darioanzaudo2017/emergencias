<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json");

$input = isset($_GET['input']) ? urlencode($_GET['input']) : '';
$key = 'AIzaSyAjm29ADxN862NXpXO0U7nPRA839Brft9s'; // 👈 reemplazá con tu clave real de Google Maps

$url = "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$input&language=es&key=$key";

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$response = curl_exec($ch);
curl_close($ch);

echo $response;
?>
