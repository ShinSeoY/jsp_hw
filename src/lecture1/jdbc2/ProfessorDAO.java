package lecture1.jdbc2;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import jsp_hw.DB;
public class ProfessorDAO {


	  public static List<Professor> findAll() throws Exception {
	        String sql = "SELECT * FROM professor";
	        try (Connection connection = DB.getConnection("student1");
	             PreparedStatement statement = connection.prepareStatement(sql);
	             ResultSet resultSet = statement.executeQuery()) {
	            ArrayList<Professor> list = new ArrayList<>();
	            while (resultSet.next()) {
	            	Professor professor = new Professor();
	                professor.setId(resultSet.getInt("id"));
	                professor.setProfessorName(resultSet.getString("ProfessorName"));
	                professor.setDepartmentId(resultSet.getInt("departmentId"));
	                list.add(professor);
	            }
	            return list;
	        }
	    }
	}



