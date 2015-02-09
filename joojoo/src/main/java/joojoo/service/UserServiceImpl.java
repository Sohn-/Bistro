package joojoo.service;

import java.util.List;

import joojoo.dao.UsersDao;
import joojoo.entity.Users;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class UserServiceImpl implements UserService{

	
	@Autowired
	UsersDao dao;
	@Override
	public int Userinsert(Users user) {
		int result = dao.insertUser(user);
		return result;
	}
	
	

	/*@Autowired
	DepartmentDao dao;
	
	@Override
	public int getDepartmentCnt() {
		// TODO Auto-generated method stub
		
		int result = dao.getDepartmentCount();
		return result;
	}

	@Override
	public int updateDepartment(Department dept) throws ServiceFailException {
		// TODO Auto-generated method stub
		int result =dao.updateDepartment(dept);
		return result;
	}

	@Override
	public List<Department> getAllDepartments() {
		// TODO Auto-generated method stub
		 List<Department> result= dao.getAllDepartments();
		return result;
	}

	@Override
	public Department getDepartmentById(int departmentId) {
		// TODO Auto-generated method stub
		Department result = dao.getDepartmentById(departmentId);
		
		return result;
	}*/

}
