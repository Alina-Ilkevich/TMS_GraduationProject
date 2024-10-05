package org.example.util.timeutil;

import java.sql.Time;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeUtil {
    public static Time convertStringToTime(String timeString) {
        try {
            SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
            long ms = sdf.parse(timeString).getTime();
            return new Time(ms);
        } catch (ParseException e) {
            throw new RuntimeException("Failed to parse time: " + timeString, e);
        }
    }

    public static String getDateFromSchedule(Timestamp date){
        return new SimpleDateFormat("yyyy-MM-dd").format(date);
    }

    public static String getTimeFromSchedule(Timestamp date){
        return new SimpleDateFormat("HH:mm").format(date);
    }

    public static Timestamp convertStringToTimestamp(String dateString){
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        try {
            Date parsedDate = dateFormat.parse(dateString);
            return new Timestamp(parsedDate.getTime());
        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Timestamp convertStringFromSchedule(String dateString){
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
        try {
            Date parsedDate = dateFormat.parse(dateString);
            return new Timestamp(parsedDate.getTime());
        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }
}

