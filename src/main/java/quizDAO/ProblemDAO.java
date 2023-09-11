package quizDAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import model.Problem;

public class ProblemDAO extends DAO{
//	全件取得
	public List<Problem> findAll() {
		List<Problem> list = new ArrayList<Problem>();
		try {
			this.connect();
			stmt = con.prepareStatement("SELECT * FROM problems");
			rs = stmt.executeQuery();
			while (rs.next()) {
				// レコードから各カラムのデータ取得
				int id = rs.getInt("id");
				String content = rs.getString("content");
				String answer1 = rs.getString("answer1");
				String answer2 = rs.getString("answer2");
				String answer3 = rs.getString("answer3");
				int choices = rs.getInt("choices");
				

				// 取得したデータでインスタンス作成、リストに追加
				Problem problem = new Problem(id,content,answer1,answer2,answer3,choices);
				list.add(problem);
			}
		} catch (NamingException | SQLException e) {
			e.printStackTrace();
		} finally {
			this.disconnect();
		}
		return list;
	}
//	ランダム取得
	public List<Problem> randFind() {
		List<Problem> list = new ArrayList<Problem>();
		try {
			this.connect();
			stmt = con.prepareStatement("SELECT * FROM problems ORDER BY RAND() LIMIT 10");
			rs = stmt.executeQuery();
			while (rs.next()) {
				// レコードから各カラムのデータ取得
				int id = rs.getInt("id");
				String content = rs.getString("content");
				String answer1 = rs.getString("answer1");
				String answer2 = rs.getString("answer2");
				String answer3 = rs.getString("answer3");
				int choices = rs.getInt("choices");
				

				// 取得したデータでインスタンス作成、リストに追加
				Problem problem = new Problem(id,content,answer1,answer2,answer3,choices);
				list.add(problem);
			}
		} catch (NamingException | SQLException e) {
			e.printStackTrace();
		} finally {
			this.disconnect();
		}
		return list;
	}
	public void insertOne(Problem problem) {
		try {
			this.connect();
			stmt = con.prepareStatement("INSERT INTO problems(content, answer1,answer2,answer3, choices) VALUES(?,?,?,?,?)");
			stmt.setString(1, problem.getContent());
			stmt.setString(2, problem.getAnswer1());
			stmt.setString(3, problem.getAnswer2());
			stmt.setString(4, problem.getAnswer3());
			stmt.setInt(5, problem.getChoices());
			stmt.execute();
		} catch (NamingException | SQLException e) {
			e.printStackTrace();
		} finally {
			this.disconnect();
		}
	}
}
