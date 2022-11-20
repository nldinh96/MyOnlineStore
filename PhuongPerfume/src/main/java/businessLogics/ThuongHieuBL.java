package businessLogics;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javaBeans.ThuongHieu;

public class ThuongHieuBL {
	public static List<ThuongHieu> docTatCa(){
		List<ThuongHieu> dsth = new ArrayList<ThuongHieu>();
		try (Connection kn = CSDL.getKetNoi()){
			Statement stm = kn.createStatement();
			ResultSet rs = stm.executeQuery("SELECT * from thuonghieu");
			while(rs.next()) {
				ThuongHieu th = new ThuongHieu();
				th.setId(rs.getString("id"));
				th.setTenThuongHieu(rs.getString("tenthuonghieu"));
				th.setHinhAnh(rs.getString("hinhanh"));
				dsth.add(th);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return dsth;
	}
//	public static void main(String[] args) {
//		List<ThuongHieu> dsth = docTatCa();
//		for(ThuongHieu th : dsth) {
//			System.out.println(th.getTenThuongHieu());
//		}
//	}
}
