package org.example.service;

import org.example.dto.ScheduleDTO;
import org.example.entity.Schedule;
import org.example.entity.User;
import org.example.repository.ClientRecordRepository;
import org.example.repository.ScheduleRepository;
import org.example.repository.UserRepository;
import org.example.util.consts.ExecutionTimeConst;
import org.example.util.timeutil.TimeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.*;

@Service
public class ScheduleService {

    //TODO UserRepository и ClientRecordRepository нельзя использовать тут
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private ClientRecordRepository clientRecordRepository;

    @Autowired
    private ScheduleRepository scheduleRepository;

    public List<Schedule> getScheduleList(int id) {
        Optional<User> masterOptional = userRepository.findById(id);
        if (masterOptional.isPresent()) {
            User master = masterOptional.get();
            return master.getSchedule();
        }
        return null;
    }

    public List<String> getDate(int id) {
        List<Schedule> masterSchedule = getScheduleList(id);
        List<String> dateFromScheduleList = new ArrayList<>();
        for (Schedule schedule : masterSchedule) {
            Date date = schedule.getStartTime();
            String dateFromSchedule = TimeUtil.getDateFromSchedule((Timestamp) date);
            dateFromScheduleList.add(dateFromSchedule);
        }
        return dateFromScheduleList;
    }

    public List<String> getTime(int id, String dateFromUser) {
        List<Schedule> masterSchedule = getScheduleList(id);
        List<String> timeFromScheduleList = new ArrayList<>();
        for (Schedule schedule : masterSchedule) {
            Date date = schedule.getStartTime();
            String dateFromSchedule = TimeUtil.getDateFromSchedule((Timestamp) date);
            if (dateFromSchedule.equals(dateFromUser)) {
                Date startTime = schedule.getStartTime();
                Date endTime = schedule.getEndTime();
                while (!startTime.equals(endTime)) {
                    Timestamp timestamp = new Timestamp(startTime.getTime());
                    String timeFromSchedule = TimeUtil.getTimeFromSchedule(timestamp);
                    String dateTimeFromSchedule = dateFromSchedule + " " + timeFromSchedule;
                    Timestamp dateTimeFromScheduleTimestamp = TimeUtil.convertStringToTimestamp(dateTimeFromSchedule);
                    if (!clientRecordRepository.existsByTime(dateTimeFromScheduleTimestamp)){
                        timeFromScheduleList.add(timeFromSchedule);
                    }
                    Calendar calendar = Calendar.getInstance();
                    calendar.setTime(startTime);
                    calendar.add(Calendar.HOUR, ExecutionTimeConst.EXECUTION_TIME_CONST);
                    startTime = calendar.getTime();
                }
            }
        }
        return timeFromScheduleList;
    }

    public void addSchedule(ScheduleDTO scheduleDTO){
        Schedule schedule = new Schedule();
        schedule.setStartTime(TimeUtil.convertStringFromSchedule(scheduleDTO.getStartTime()));
        schedule.setEndTime(TimeUtil.convertStringFromSchedule(scheduleDTO.getEndTime()));
        User master = userRepository.findById(scheduleDTO.getMasterId()).get();
        schedule.setUserSchedule(master);
        scheduleRepository.save(schedule);
    }
}
