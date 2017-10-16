package com.j.qsng.service;

import com.j.qsng.model.Attachment;

import java.io.IOException;
import java.io.InputStream;

/**
 * Created by Administrator on 2017/10/14.
 */
public interface AttachmentService
{
	public void add(Attachment a,InputStream is)throws IOException;
	public void delete(int id);
	public Attachment load(String id);

	/**
	 * 清空没有被引用的附件
	 */
	public void clearNoUseAttachment();

	public void add(Attachment a);

}
