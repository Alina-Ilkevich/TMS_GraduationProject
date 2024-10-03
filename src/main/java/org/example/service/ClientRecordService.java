package org.example.service;

import org.example.dto.ClientRecordDTO;
import org.example.entity.AnimalService;
import org.example.entity.ClientRecord;
import org.example.entity.User;
import org.example.repository.AnimalServiceRepository;
import org.example.repository.ClientRecordRepository;
import org.example.repository.UserRepository;
import org.example.util.timeutil.TimeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

@Service
public class ClientRecordService {

    @Autowired
    private ClientRecordRepository clientRecordRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private AnimalServiceRepository animalServiceRepository;

    public void saveClientRecord(ClientRecordDTO clientRecordDTO){
        ClientRecord clientRecord = new ClientRecord();

        User master = userRepository.findById(clientRecordDTO.getMaster()).get();
        clientRecord.setMaster(master);

        AnimalService animalService = animalServiceRepository.findById(clientRecordDTO.getAnimalService());
        clientRecord.setAnimalService(animalService);

        clientRecord.setTime(TimeUtil.convertStringToTimestamp(clientRecordDTO.getTime()));

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String userLogin = authentication.getName();
        User user = userRepository.findByLogin(userLogin);
        clientRecord.setUser(user);

        clientRecordRepository.save(clientRecord);
    }
}
