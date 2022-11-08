package com.sumcofw.infra.modules.lecturer;

import java.util.List;

public interface LecturerService {
	
	public Lecturer selectOneLecturer(Lecturer dto) throws Exception; 
	
	public List<Lecturer> selectLecture() throws Exception;
	
}
