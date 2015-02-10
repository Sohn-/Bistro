package joojoo.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

//@Service
@Transactional(rollbackFor=java.lang.Exception.class)
public class CouponServiceImpl implements CouponService{

	@Autowired
	DepartmentDao dao;

	@Override
	public Integer getDeptCnt() {
		return dao.getDepartmentCount();
	}

	@Override
	public Department getDepartmentById(int i) {
		return dao.getDepartmentById(i);
	}

	@Override
	
	public void updateDepartment(Department dept) throws ServiceFailException{
		dao.updateDepartment(dept);
	}

	@Override
	public Map<String, Object> getDepartmentByIdNoMapping(int departmentId) {
		return dao.getDepartmentByIdNoMapping(departmentId);

	}

	@Override
	public Integer getDepartmentCountByLocationId(int locationId) {
		return dao.getDepartmentCountByLocationId(locationId);
	}

	@Override
	public List<Department> getAllDepartments() {
		return dao.getAllDepartments();
	}

	@Override
	public List<Department> getDepartmentsByManagerId(int i) {
		return getDepartmentsByManagerId(i);
	}
	

}
