<?php
// Параметры подключения к базе данных
$host = 'localhost';
$db = 'delta_db';
$user = 'root';
$pass = '';

// Создание подключения
$conn = new mysqli($host, $user, $pass, $db);

// Проверка подключения
if ($conn->connect_error) {
    die("Ошибка подключения: " . $conn->connect_error);
}

// SQL запрос для получения данных
$sql = "SELECT date, revenue, cash, non_cash, credit_cards, average_check, average_guest, post_payment_removal, pre_payment_removal, checks_count, guests_count FROM sales ORDER BY date DESC";
$result = $conn->query($sql);

// Массив для хранения данных
$data = array();

if ($result->num_rows > 0) {
    // Цикл для формирования массива с данными
    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
} else {
    $data['error'] = 'Нет данных';
}

// Закрытие соединения
$conn->close();

// Установка заголовков для возврата JSON
header('Content-Type: application/json');
echo json_encode($data);
