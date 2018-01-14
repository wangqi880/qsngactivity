package com.j.qsng.service;

import com.j.qsng.common.pojo.SystemContext;
import com.j.qsng.dao.AttachmentMapper;
import com.j.qsng.model.Attachment;
import net.coobird.thumbnailator.Thumbnails;
import net.coobird.thumbnailator.geometry.Positions;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/**
 * Created by Administrator on 2017/10/14.
 */
@Service("attachmentService")
public class AttachmentServiceImpl implements AttachmentService
{
	@SuppressWarnings ("SpringJavaAutowiringInspection") @Autowired AttachmentMapper attachmentMapper;

	public final static int IMG_WIDTH = 3000;
	public final static int THUMBNAIL_WIDTH = 400;
	public final static int THUMBNAIL_HEIGHT = 400;

	public void add(Attachment a, InputStream is) throws IOException
	{
		attachmentMapper.add(a);
		addFile(a,is);
	}

	public void delete(int id)
	{
	}

	public Attachment load(String id)
	{
		return attachmentMapper.load(id);
	}

	public void add(Attachment a){
		attachmentMapper.add(a);
	}

	public void add(Attachment a, InputStream is, String path) throws IOException {
		attachmentMapper.add(a);
		addFile(a,is,path);
	}

	public void clearNoUseAttachment()
	{
	}

	public void addFile(Attachment a, InputStream is) throws IOException
	{
		//进行文件的存储
		String realPath=SystemContext.getRealPath();
		String path = realPath+"/resources/upload/";
		String thumbPath = realPath+"/resources/upload/thumbnail/";
		File fp = new File(path);
		File tfp = new File(thumbPath);
		//		System.out.println(fp.exists());
		//		System.out.println(tfp.exists());
		if(!fp.exists()) fp.mkdirs();
		if(!tfp.exists()) tfp.mkdirs();
		path = path+a.getNewName();
		thumbPath = thumbPath+a.getNewName();
		//		System.out.println(path+","+thumbPath);
		if(a.getIsImg()==1) {
			BufferedImage oldBi = ImageIO.read(is);
			int width = oldBi.getWidth();
			Thumbnails.Builder<BufferedImage> bf = Thumbnails.of(oldBi);
			if(width>IMG_WIDTH) {
				bf.scale((double)IMG_WIDTH/(double)width);
			} else {
				bf.scale(1.0f);
			}
			bf.toFile(path);
			//缩略图的处理
			//1、将原图进行压缩
			BufferedImage tbi = Thumbnails.of(oldBi)
				.scale((THUMBNAIL_WIDTH*1.2)/width).asBufferedImage();
			//2、进行切割并且保持
			Thumbnails.of(tbi).scale(1.0f)
				/*.sourceRegion(Positions.CENTER, THUMBNAIL_WIDTH, THUMBNAIL_HEIGHT)*/
				.toFile(thumbPath);
		}
	}
	public void addFile(Attachment a, InputStream is,String path) throws IOException
	{
		//进行文件的存储
		File fp = new File(path);
		String thumbPath = path+"/thumbnail/";
		if(!fp.exists()) fp.mkdirs();
		File tfp = new File(thumbPath);
		if(!tfp.exists()) tfp.mkdirs();
		path = path+a.getNewName();
		thumbPath = thumbPath+a.getNewName();
		if(!fp.exists()) fp.mkdirs();
		if(!tfp.exists()) tfp.mkdirs();
		if(a.getIsImg()==1) {
			BufferedImage oldBi = ImageIO.read(is);
			int width = oldBi.getWidth();
			Thumbnails.Builder<BufferedImage> bf = Thumbnails.of(oldBi);
			if(width>IMG_WIDTH) {
				bf.scale((double)IMG_WIDTH/(double)width);
			} else {
				bf.scale(1.0f);
			}
			bf.toFile(path);
			//缩略图的处理
			//1、将原图进行压缩
			BufferedImage tbi = Thumbnails.of(oldBi)
					.scale((THUMBNAIL_WIDTH*1.2)/width).asBufferedImage();
			//2、进行切割并且保持
			Thumbnails.of(tbi).scale(1.0f)
				/*.sourceRegion(Positions.CENTER, THUMBNAIL_WIDTH, THUMBNAIL_HEIGHT)*/
					.toFile(thumbPath);
		}
	}
}
