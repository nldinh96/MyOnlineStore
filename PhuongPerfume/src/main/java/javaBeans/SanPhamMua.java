package javaBeans;

public class SanPhamMua extends SanPham {
	private int soLuongMua;

	public int getSoLuongMua() {
		return soLuongMua;
	}

	public void setSoLuongMua(int soLuongMua) {
		this.soLuongMua = soLuongMua;
	}
	
	public double thanhTien() {
		return soLuongMua * getDonGiaKM();
	}

	public SanPhamMua() {
		super();
	}
	
}
