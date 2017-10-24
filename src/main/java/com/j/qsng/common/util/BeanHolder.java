package com.j.qsng.common.util;


import java.util.Locale;
import java.util.Map;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.util.StringUtils;

/**
 * Created by Administrator on 2017/10/23.
 */
public class BeanHolder implements ApplicationContextAware {
	private static ApplicationContext context = null;

	public BeanHolder() {
	}

	public void setApplicationContext(ApplicationContext arg0) throws BeansException {
		setApplicationContextStatic(arg0);
	}

	private static void setApplicationContextStatic(ApplicationContext arg0) {
		context = arg0;
	}

	public static <E> E getBean(String name) {
		return null == context?null: (E) context.getBean(name);
	}

	public static <E> Map<String, E> getBeans(Class<? extends E> clazz) {
		return null == context?null: (Map<String, E>) context.getBeansOfType(clazz);
	}

	public static String getMessage(String messageKey) {
		return getMessage(messageKey, Locale.getDefault());
	}

	public static String getMessage(String messageKey, Object[] args) {
		return getMessage(messageKey, args, Locale.getDefault());
	}

	public static String getMessage(String messageKey, Locale locale) {
		return getMessage(messageKey, (Object[])null, locale);
	}

	public static String getMessage(String messageKey, Object[] args, Locale locale) {
		String result = "";
		if(null == context) {
			result = messageKey;
		} else {
			result = context.getMessage(messageKey, args, messageKey, locale);
		}

		if(StringUtils.isEmpty(result)) {
			result = messageKey;
		}

		return result;
	}
}

