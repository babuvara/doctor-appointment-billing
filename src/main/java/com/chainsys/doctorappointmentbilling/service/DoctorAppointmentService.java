package com.chainsys.doctorappointmentbilling.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.doctorappointmentbilling.dao.AppointmentRepository;
import com.chainsys.doctorappointmentbilling.dao.DoctorDetailsRepository;
import com.chainsys.doctorappointmentbilling.DTO.DoctorAppointmentDTO;
import com.chainsys.doctorappointmentbilling.model.DoctorDetails;
import com.chainsys.doctorappointmentbilling.model.Appointment;
@Service
public class DoctorAppointmentService {
    
    @Autowired
    DoctorDetailsRepository doctorDetailsRepo ;
    @Autowired
    AppointmentRepository appointRepo;
    
    public DoctorAppointmentDTO getAppointmentList(int DOCTOR_ID) {
        DoctorDetails doc = doctorDetailsRepo.findById(DOCTOR_ID);
        DoctorAppointmentDTO dto = new DoctorAppointmentDTO();
        dto.setDoctor(doc);
        List<Appointment> appoint = appointRepo.findByDoctorId(DOCTOR_ID);
        Iterator<Appointment> iterator = appoint.iterator();
        while (iterator.hasNext())
            dto.addAppointmentList((Appointment) iterator.next());

        return dto;
    }
}