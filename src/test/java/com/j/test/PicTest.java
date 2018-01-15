package com.j.test;

import com.j.qsng.model.Attachment;
import net.coobird.thumbnailator.Thumbnails;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.LinkedList;

public class PicTest {
    public final static int IMG_WIDTH = 3000;
    public final static int THUMBNAIL_WIDTH = 400;
    public final static int THUMBNAIL_HEIGHT = 400;

    public static void main(String args[]){
        String path="D:\\pic\\indexPic";
        try {
            thum(path);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    public static void thum(String path) throws IOException {
        //进行文件的存储
        File file = new File(path);
        String thumbPath = path + "/thumbnail/";
        File tfp = new File(thumbPath);
        if (file.exists()) {
            LinkedList<File> list = new LinkedList<File>();
            File[] files = file.listFiles();
            for (File file2 : files) {
                if(file2.isFile()){
                    String fileName = file2.getName();
                    System.out.println(fileName);
                    BufferedImage oldBi = ImageIO.read(file2);
                    int width = oldBi.getWidth();
                    //缩略图的处理
                    //1、将原图进行压缩
                    BufferedImage tbi = Thumbnails.of(oldBi)
                            .scale((THUMBNAIL_WIDTH*1.2)/width).asBufferedImage();
                    //2、进行切割并且保持
                    Thumbnails.of(tbi).scale(1.0f).toFile(thumbPath+fileName);
                }

            }

       /* if(!tfp.exists()) tfp.mkdirs();

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
				*//*.sourceRegion(Positions.CENTER, THUMBNAIL_WIDTH, THUMBNAIL_HEIGHT)*//*
                    .toFile(thumbPath);
        }*/
        }
    }
}
