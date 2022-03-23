package co.yedam.MidProject.professor.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.professor.service.ProfessorService;
import co.yedam.MidProject.professor.service.ProfessorVO;
import co.yedam.MidProject.professor.serviceImpl.ProfessorServiceImpl;

public class ProfessorUpdateForm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// UpdateForm으로 넘어갔을 때 값을 넘겨줘야하니까 여기에 셋시켜둬야함.
		ProfessorService professorDao = new ProfessorServiceImpl();
		ProfessorVO professor = new ProfessorVO();
		professor.setP_Id(request.getParameter("id"));
		
		request.setAttribute("professor", professorDao.selectProfessor(professor));
		
//		String id = request.getParameter("pId");
//		String name = request.getParameter("pName");
//		String pass = request.getParameter("pPassword");
//		String phone = request.getParameter("pPhone");
//		String birth = request.getParameter("pBirth");
//		String img = request.getParameter("pimg");
//		String did = request.getParameter("dId");
//		
//		ProfessorVO professor = new ProfessorVO();
//		professor.setP_Id(id);
//		professor.setP_Name(name);
//		professor.setP_Password(pass);
//		professor.setP_Phone(phone);
//		professor.setP_Birth(birth);
//		professor.setP_Img(img);
//		professor.setD_Id(did);
//		
//		ProfessorService service = new ProfessorServiceImpl();
//		service.updateProfessor(professor);
//		
//		
//		request.setAttribute("professors", professor);
//		System.out.println(professor);
		return "professor/professorUpdateForm";
	}

}