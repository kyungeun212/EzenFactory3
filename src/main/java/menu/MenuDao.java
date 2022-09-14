package menu;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MenuDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// mapper 안에 들어있는 namespace.id 넣어줌
	public List<MenuBean> getMenuInfo(){
		List<MenuBean> MenuList = sqlSessionTemplate.selectList("menu.getMenuInfo");
		return MenuList;
}
	
	public List<MenuBean> getSubMenuInfo(String menu_idx){
		return sqlSessionTemplate.selectList("menu.getSubMenuInfo", menu_idx);
}
	
}
