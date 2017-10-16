package com.j.qsng.dao;

import com.j.qsng.model.Attachment;

import java.io.IOException;
import java.io.InputStream;

/**
 * Created by Administrator on 2017/10/14.
 */
public interface AttachmentMapper
{
	public void add(Attachment a,InputStream is)throws IOException;
	public void delete(int id);
	public Attachment load(String id);
	public void add(Attachment a);
	/**
	 * 清空没有被引用的附件
	 */
	public void clearNoUseAttachment();
}
