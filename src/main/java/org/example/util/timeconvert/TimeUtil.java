package org.example.util.timeconvert;

import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class TimeUtil {
    public static Time convertStringToTime(String timeString) {
        try {
            // Используем SimpleDateFormat для парсинга строки
            SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
            long ms = sdf.parse(timeString).getTime(); // Получаем миллисекунды из строки
            return new Time(ms); // Преобразуем в java.sql.Time
        } catch (ParseException e) {
            throw new RuntimeException("Failed to parse time: " + timeString, e);
        }
    }
}

