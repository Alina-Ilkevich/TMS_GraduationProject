package org.example.controller;

import org.example.dto.ClientRecordDTO;
import org.example.entity.AnimalService;
import org.example.entity.ClientRecord;
import org.example.entity.User;
import org.example.service.AnimalServiceService;
import org.example.service.ClientRecordService;
import org.example.service.ScheduleService;
import org.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/all")
public class ClientRecordController {

    @Autowired
    private ClientRecordService clientRecordService;

    @Autowired
    private AnimalServiceService animalServiceService;

    @Autowired
    private UserService userService;

    @Autowired
    private ScheduleService scheduleService;

    @GetMapping("/choosemaster")
    public String showMasterAppointmentPage(Model model){
        List<AnimalService> services = animalServiceService.findService();
        model.addAttribute("services", services);

        List<User> masters = userService.findMaster();
        model.addAttribute("masters", masters);

        return "masterAppointment";
    }

    @PostMapping("/choosemaster")
    public String selectMaster(@RequestParam("animalServiceId") int animalServiceId,
                               @RequestParam("masterId") int masterId,
                               Model model){
        model.addAttribute("animalServiceId", animalServiceId);

        model.addAttribute("masterId", masterId);

        return "redirect:/all/chooseday?animalServiceId=" + animalServiceId + "&masterId=" + masterId;
    }

    @GetMapping("/chooseday")
    public String showDayAppointmentPage(@RequestParam("animalServiceId") int animalServiceId,
                                         @RequestParam("masterId") int masterId,
                                         Model model){
        List<String> dateFromScheduleList = scheduleService.getDate(masterId);
        model.addAttribute("days", dateFromScheduleList);

        model.addAttribute("animalServiceId", animalServiceId);

        model.addAttribute("masterId", masterId);
        return "dayAppointment";
    }

    @PostMapping("/chooseday")
    public String selectDay(@RequestParam("animalServiceId") int animalServiceId,
                            @RequestParam("masterId") int masterId,
                            @RequestParam("day") String day,
                            Model model) {
        model.addAttribute("animalServiceId", animalServiceId);

        model.addAttribute("masterId", masterId);

        model.addAttribute("day", day);

        return "redirect:/all/choosetime?animalServiceId=" + animalServiceId + "&masterId=" + masterId + "&day=" + day;
    }

    @GetMapping("/choosetime")
    public String showTimeAppointmentPage(@RequestParam("animalServiceId") int animalServiceId,
                                          @RequestParam("masterId") int masterId,
                                          @RequestParam("day") String day,
                                          Model model){
        List<String> timeFromScheduleList = scheduleService.getTime(masterId, day);
        model.addAttribute("timeFromScheduleList", timeFromScheduleList);

        model.addAttribute("animalServiceId", animalServiceId);

        model.addAttribute("masterId", masterId);

        model.addAttribute("day", day);

        model.addAttribute("appointmentForm", new ClientRecord());

        return "timeAppointment";
    }

    @PostMapping("/choosetime")
    public String selectTime(@RequestParam("animalServiceId") int animalServiceId,
                             @RequestParam("masterId") int masterId,
                             @RequestParam("day") String day,
                             @RequestParam("time") String time,
                             Model model) {
        model.addAttribute("animalServiceId", animalServiceId);

        model.addAttribute("masterId", masterId);

        model.addAttribute("day", day);

        model.addAttribute("time", time);

        String date = day + " " + time;
        model.addAttribute("date", date);

        return "redirect:/all/makeappointment?animalServiceId=" + animalServiceId + "&masterId=" + masterId + "&date=" + date;
    }
    @GetMapping("/makeappointment")
    public String showMakeAppointmentPage(@RequestParam("animalServiceId") int animalServiceId,
                                          @RequestParam("masterId") int masterId,
                                          @RequestParam("date") String date,
                                          Model model){

        List<AnimalService> services = animalServiceService.findService();
        model.addAttribute("services", services);

        List<User> masters = userService.findMaster();
        model.addAttribute("masters", masters);

        model.addAttribute("animalServiceId", animalServiceId);

        model.addAttribute("masterId", masterId);

        model.addAttribute("date", date);

        model.addAttribute("appointmentForm", new ClientRecordDTO());

        return "appointment";
    }

    @PostMapping("/makeappointment")
    public String makeAppointment(@ModelAttribute ("appointmentForm")ClientRecordDTO clientRecordDTO){
        clientRecordService.saveClientRecord(clientRecordDTO);
        return "redirect:/all/salon/main";
    }

    @GetMapping("showclientrecord")
    public String showClientRecord(Model model){
        List<ClientRecord> clientRecords = clientRecordService.showClientRecord();
        model.addAttribute("clientRecords", clientRecords);

        return "showClientRecord";
    }
}
