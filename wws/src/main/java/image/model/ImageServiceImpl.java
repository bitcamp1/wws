package image.model;


public class ImageServiceImpl implements ImageService{
	ImageDaoImpl dao;
	
	public void setDao(ImageDaoImpl dao){this.dao=dao;}
	
	public ImageServiceImpl() {
		dao=new ImageDaoImpl();
	}
	

	@Override
	public int getLastInsertId() throws Exception {
		return dao.selectLastInsertId();
	}

	
	
}
