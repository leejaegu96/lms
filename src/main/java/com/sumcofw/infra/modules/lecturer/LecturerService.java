package com.sumcofw.infra.modules.lecturer;

import java.util.List;

public interface LecturerService {
	
	public Lecturer selectOneLecturer(Lecturer dto) throws Exception; 
	
	public List<Lecturer> selectLecture(Lecturer dto) throws Exception;
	public List<Lecturer> selectCategory() throws Exception;
	public List<Lecturer> selectCategorySub() throws Exception;
	public List<Lecturer> selectChapterList(Lecturer dto) throws Exception;
	public List<Lecturer> selectChapterHeaderList(Lecturer dto) throws Exception;
	
	public Lecturer selectLectureOne(Lecturer dto) throws Exception;
	public Lecturer selectTeacher(Lecturer dto) throws Exception;
	public List<Lecturer> selectTeacherSns(Lecturer dto) throws Exception;
	
	public List<Lecturer> teacherUploaded(Lecturer dto) throws Exception;
	public int lecturerInst(Lecturer dto) throws Exception;
	public int updateTeacher(Lecturer dto) throws Exception;
	public int updateTeacherUploaded(Lecturer dto) throws Exception;
}
