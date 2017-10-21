package com.j.qsng.model;

import lombok.Data;

/**
 * Created by Administrator on 2017/10/14.
 */
@Data
public class Attachment
{
	private long id;
	private long userId;
	/**
	 * 附件上传之后的名称
	 */
	private String newName;
	/**
	 * 附件的原始名称
	 */
	private String oldName;
	/**
	 * 附件的类型，这个类型和contentType类型一致
	 */
	private String type;
	/**
	 * 附件的后缀名
	 */
	private String suffix;
	/**
	 * 附件的大小
	 */
	private long size;

	/**
	 * 该附件是否是图片类型,0表示不是，1表示是
	 */
	private int isImg;


	private String  insertTime;

	private String filePath;
	private String thumFilePath;

}
