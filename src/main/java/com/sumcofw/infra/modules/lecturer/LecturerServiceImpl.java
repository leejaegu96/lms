package com.sumcofw.infra.modules.lecturer;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class LecturerServiceImpl implements LecturerService{
	
	@Autowired
	LecturerDao dao;
	
	//@Override
	public Lecturer selectOneLecturer(Lecturer dto) throws Exception {
        return dao.selectOneLecturer(dto);
    }
	
}
