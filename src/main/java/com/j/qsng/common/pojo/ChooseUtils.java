package com.j.qsng.common.pojo;

/**
 * Created by Administrator on 2017/10/28.
 */
public class ChooseUtils
{
	//第一次选择照片数量
	public static final int FIRST_CHOOSE_NUM = 10;

	//第二次选择照片数量
	public static final int SECOND_CHOOSE_NUM = 10;

	//第一轮可以选的图片数量key
	public static final   String FIRST_CHOOSE_NUM_KEY="first_choose_num";
	//第二轮可以选的图片数量key
	public static final   String SECOND_CHOOSE_NUM_KEY="second_choose_num";

	//第一期表示
	public static final String FIRST_PERIOD = "1";

	//第二期表示
	public static final String SECOND_PERIOD = "2";

	//第三期表示
	public static final String THIRD_PERIOD = "3";

	//没有选中照片
	public static final String NO_CHOOSE = "0";

	//选中照片
	public static final String YES_CHOOSE = "1";

	//选择用户是否可以选择照片,第一期
	public static final String ADMIN_CHOOSE_FIRST_STATUS="admin_choose_first_status";

	//选择用户是否可以选择照片,第二期
	public static final String ADMIN_CHOOSE_SENCOND_STATUS="admin_choose_sencond_status";

	//选择用户是否可以打分,第三期
	public static final String ADMIN_CHOOSE_THIRD_STATUS="admin_choose_third_status";

	//用户是否允许修改上传作品
	public static final String USER_ALLOW_UPDATE="user_allow_update";

	//用户是否允许添加作品
	public static final String USER_ALLOW_ADD_USER_PIC="user_allow_add_user_pic";

	//用户是否允许上传图片
	public static final String USER_ALLOW_UPLOAD="user_allow_upload";

	//是否允许用户查看评分之后的作品
	public  static  final  String USER_ALLOW_SEE_USER_PIC_SCORE= "user_allow_see_user_pic_score";

	//是否允许线网用户查看第一次筛选
	public  static  final  String IS_ALLOWD_FIRST_SHOW= "is_allowd_first_show";
	//是否允许展示领奖信息
	public  static  final  String IS_ALLOWD_PRIZE_SHOW= "is_allowd_prize_show";


}
