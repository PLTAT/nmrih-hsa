




#pragma semicolon 1

public Plugin myinfo =
{
	name = "受伤满甲",
	author = "PLTAT",
	description = "玩家受伤时满甲.",
	version = "20250815233030",
	url = "https://github.com/pltat"
};

public void OnPluginStart()
{
	HookEvent("player_hurt", look_event_1); //用 插件 监控 游戏
	PrintToServer("nmrih_hsh.smx 加载. 开始监控.");
//%s 字符串
//%d 整数十进制
//%f 浮点数
}

public void look_event_1(Event data, const char[] name, bool dontBroadcast)
//类型 变量
//数据 userid attacker weapon
//监控的类型 player_hurt
//返回值 true未广播 false广播或即将广播
{
	int random_number_1 = data.GetInt("userid"); //获取数据 https://wiki.alliedmods.net/No_More_Room_in_Hell_Events#player_hurt
	int client_number_1 = GetClientOfUserId(random_number_1); //游戏随机数 转换为 插件自然数 如114514 到1-9
	
	SetEntProp(client_number_1, Prop_Data, "m_ArmorValue", 2147483647);
}




