package model;

public class Bao {
	private int id;
	private String tieuDe, theLoai, noiDung1, noiDung2;
	private String image;

	public Bao() {
		// TODO Auto-generated constructor stub
	}

	public Bao(int id, String tieuDe, String theLoai, String noiDung1, String noiDung2, String image) {
		super();
		this.id = id;
		this.tieuDe = tieuDe;
		this.theLoai = theLoai;
		this.noiDung1 = noiDung1;
		this.noiDung2 = noiDung2;
		this.image = image;
	}

	public Bao(String tieuDe, String theLoai, String noiDung1, String noiDung2, String image) {
		super();
		this.tieuDe = tieuDe;
		this.theLoai = theLoai;
		this.noiDung1 = noiDung1;
		this.noiDung2 = noiDung2;
		this.image = image;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTieuDe() {
		return tieuDe;
	}

	public void setTieuDe(String tieuDe) {
		this.tieuDe = tieuDe;
	}

	public String getTheLoai() {
		return theLoai;
	}

	public void setTheLoai(String theLoai) {
		this.theLoai = theLoai;
	}

	public String getNoiDung1() {
		return noiDung1;
	}

	public void setNoiDung1(String noiDung1) {
		this.noiDung1 = noiDung1;
	}

	public String getNoiDung2() {
		return noiDung2;
	}

	public void setNoiDung2(String noiDung2) {
		this.noiDung2 = noiDung2;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return "Bao [id=" + id + ", tieuDe=" + tieuDe + ", theLoai=" + theLoai + ", noiDung1=" + noiDung1
				+ ", noiDung2=" + noiDung2 + ", image=" + image + "]";
	}
	
	
}
