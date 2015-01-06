<%--
  Created by IntelliJ IDEA.
  User: zhang_yao_wu1993
  Date: 15/1/3
  Time: 下午8:48
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String[] animation_intro_title = {
            "作者の介绍:ZeRur",
            "动漫の世界－Angel Beats",
            "动漫の世界－花开物语",
            "动漫の世界－翠星之加尔刚蒂亚",
            "动漫の世界－Love Live",
            "动漫の世界－某科学的超电磁炮",
            "动漫の世界－刀剑神域",
            "动漫の世界－心理测量者",
            "动漫の世界－玉子市场",
            "动漫の世界－fate/stay night",
            "动漫の世界－天体的秩序",
            "游戏の世界－2048",
            "游戏の世界－待填充",
            "游戏の世界－待填充"
    };

    String[] game_link = {
            "/2048.jsp",
            "javascript:void(0)",
            "javascript:void(0)"
    };

    String[] animation_intro_text = {
            "专注于程序设计，是一个正直的人。",
            "故事从男主角音无从“死后的世界”醒来开始，认识了一个叫仲村由理的女孩。原来，由理在“死后的世界”率领着一个名为“死后世界战线”，简称“SSS”的组织。“SSS”成立的主要目的是反抗赐予他们生前悲哀命运的神以及神之使者——天使，在天使超乎常理的异能面前，“SSS”只能用枪来反抗。\n" + "主题围绕着“人生”展开，以死后的世界为舞台，讲述了反抗着命运的少男少女们的故事。作品中的“人生哲理”与“战斗要素”（虽然战斗要素是看点，但是战斗并不会让剧中的人物消失，也不会让他们受伤，当剧中的人物完成生前的遗憾后便会解脱，就是所谓的投胎转世，所以作品中心是围绕其对人性的体现）是其精彩看点。",
            "松前绪花，一个一直想要变得和“现在的自己”不一样的16岁的普通女高中生。\n" +
                    "这一天，突然的离家出走，心上人突然的告白，然后确又是突然的分离，一直以来那个想要变成不同的自己的梦，忽然就这样成了真，松前绪花不平凡生活却在一天之内居然迎来了电视连续剧般的惊人展开。\n" +
                    "她告别了自己的母亲，告别了她生活的这个熟悉却没什么感情的城市，来到未曾谋面的外婆家的温泉旅馆“喜翠庄”工作及居住。\n" +
                    "在这个充满了大正浪漫风味的温泉旅馆里，绪花遇见了鹤来民子、押水菜子及和仓结名等年龄相仿的女孩及各种不同的人、以及工作上的前辈们，她认识到从未认识的新世界，如同花芽冲破地面进入了一个新的世界一般，开始了与过去完全不同的新的生活。",
            "在遥远的未来，银河的尽头。人类正与异形的怪生命体展开生存之战。在激战中，少年兵莱德与其乘坐的人型机动兵器Chamber 一起被吞入了不明的时空。\n" + "被海洋包围的地球此时已经是一片汪洋，地球上的人类们靠乘坐巨大的船只移动，同时不断地打捞着旧文明留在海底的物品生存。被船队搭救的莱德登上了其中一艘大船加尔刚蒂亚，而由于语言、文化、习惯等的不同，莱德对未知的环境感到非常困惑。但无可避免的他必须去学会如何与加尔刚蒂亚上的人们共同生活，其中还包括少女艾米。",
            "在秋叶原，神田和神保町这三条街上的传统学校，音乃木坂学园正面临着废校的大危机。\n" +
                    "面对学校的危机，以二年生高坂穗乃果为中心的九位女生站了出来。\n" +
                    "为了保护我们最喜欢的学校，我们能做的事情……就是，成为偶像！\n" +
                    "通过成为学院偶像向外宣传学校，增加学生人数！从这里开始，她们实现梦想的故事开始了！",
            "有230万人口，其中八成人口为学生的“学园都市”，是比其他地区科技更为先进，并从事“超能力开发”的特殊地区。\n" + "而整座学园都市中仅有七人的等级5超能力者之一御坂美琴，由于她的能力与个性使然，因而被卷入了学园都市中所发生的种种事件……",
            "主角桐谷和人是使用世界首款完全潜行游戏“Sword Art Online 刀剑神域”的玩家。曾经很幸运的参与过封闭测试，并买下正式版的和人，正准备体验游戏的第一次正式营运。但在登入后不久，和人发现“登出”指令竟然消失，而与此同时自称是SAO游戏设计者“茅场晶彦”的人淡淡开始说明，无法完成攻略就无法离开游戏，只有打倒位于“艾恩葛朗特”顶楼，第100层的头目－达成“完全攻略”－才是离开这个世界唯一的方法。并且，在游戏内GAME OVER或是尝试脱下NERvGear，玩家会立刻被NERvGear发出的高频率微波破坏脑部而死亡。唯有接受这个矛盾事实的人，才能够存活下去。\n" + "自己也被卷入其中的桐人，在游戏的舞台——巨大浮游城堡“艾恩葛朗特”里，以不与人组队的独行剑士身份，逐渐崭露头角，并获得“黑色剑士”的称号。桐人以完全攻略的条件——到达城堡最上层为目标，持续进行严酷且漫长的冒险，在这期间他邂逅了女性细剑使——“闪光”亚丝娜，以及公会“血盟骑士团团长”希兹克利夫，他的命运也一步步产生了巨大的变化。桐人能否从游戏里全身而退……",
            "在人类的心理状态和性格倾向都能被数值化的未来。所有的感情、欲望、社会病态心理倾向等全部被记录并管理，大众以“好的人生”作为目标，竭力于数值性地实现它。\n" +
                    "所有的监控摄像头都已经被升级和联网到一体，通过监视人类的色相浑浊程度和声音、视频等信息用来计算人类的每个心理状态和个性倾向所衡量的值，通称：（即片名：心理测量者PSYCHO-PASS），它被用作判定人们的思想应有PSYCHO-PASS状态、个人精神本身。通过计算这些数值，系统可以自主断定一个人最理想的工作，感情，心理压力，甚至犯罪意图。\n" +
                    "因此，为让大众达到“理想的人生”这个指标，人们实现这些数值就变得非常积极。然而，有关犯罪的数值，也就是“犯罪指数”也会被测量，当然犯罪者亦是如此。因此，人们需要不断地保证自己的指数在正常范围，否则会被系统认为是潜在犯，将会被\"矫正\"。",
            "坐落于某个小镇的兔山商店街（うさぎ山商店街）上，有个经营饼店的少女－－北白川玉子。除了帮忙店里的事情，她亦有跟学校的朋友常盘绿和牧野神奈参与舞棒部活动。而饼店对面的大路家是同一行业的竞争对手，两边的父亲经常都因生意问题而喧闹一番。然而大路家的儿子大路饼藏却是玉子的朋友，但玉子从没注意到饼藏的好感。总而言之，玉子在商店街众人的护荫下，热闹地度过每一天，生活可谓过得相当快乐。\n" +
                    "除夕，也就是玉子的生日，处于商店街年末最繁忙的时刻。庆祝仪式已是商店街上下的惯例，唯独饼藏今年没有准时来到。直到他带着礼物来到之时……\n" +
                    "商店街突然出现了一只懂得说人话的鸟，犹如飞车般降临到众人面前。偶然变得越来越热闹的兔山商店街，亦正式开始其稍微不同的新一年。",
            "圣杯是传说中可实现持有者一切愿望的宝物，而为了得到圣杯的仪式就被称为圣杯战争。\n" +
                    "Servant\n" +
                    "参加圣杯战争的7名由圣杯选出的魔术师被称为Master，与7名被称为Servant的使魔订定契约。他们是由圣杯选择的七位英灵，被分为七个职阶，以使魔的身份被召唤出来。能获得圣杯的只有一组，这7组人马各自为了成为最后的那一组而互相残杀。\n" +
                    "卫宫切嗣的养子卫宫士郎，偶然地与servant中的剑士Saber签定契约，被卷入圣杯战争当中。",
            "某日在雾弥湖的上空中出现了谜样的圆盘，一度造成全世界的混乱与恐慌，但飞碟却只停留在空中，并没有进一步的行动。在时间流逝中人们渐渐对这件事失去了兴趣......就在两名少女相遇后，静止的时间再次流动，让众人有所改变的全新故事展开，中学生活最后那一年，将拥有一生无法忘怀的回忆。"
    };


    // Music animation_intro_title
    String[] music_name = {
            "想在辉夜城起舞",
            "Baby Cruising Love",
            "珊瑚海",
            "Because Of You",
            "Best Friend",
            "Mke Up",
            "雏菊",
            "ReReハロ~終われそうにない夏~",
            "不自然なガール",
            "Jelly",
            "Maybe",
            "Flower Of Sorrow"
    };

    String[] blog_title_intro = {
            "魔兽世界最卑微种族论", "旷世经典魔兽世界中最卑微的种族，这一观点由大法师无视帝提出。",
            "魔兽世界最卑微种族论", "旷世经典魔兽世界中最卑微的种族，这一观点由大法师无视帝提出。",
            "魔兽世界最卑微种族论", "旷世经典魔兽世界中最卑微的种族，这一观点由大法师无视帝提出。",
            "魔兽世界最卑微种族论", "旷世经典魔兽世界中最卑微的种族，这一观点由大法师无视帝提出。",
            "魔兽世界最卑微种族论", "旷世经典魔兽世界中最卑微的种族，这一观点由大法师无视帝提出。",
            "魔兽世界最卑微种族论", "旷世经典魔兽世界中最卑微的种族，这一观点由大法师无视帝提出。"
    };

    // Ajax 返回请求的标题和文本 中间用 <split> 分割
    response.setHeader("Cache-Control", "no-store");

    String[] index_request = request.getParameter("index_request").split("<split>");

    // 在页面初始化时 ad_left_init_request 返回 ad_left 中的 innerHTML
    if(index_request[0].equals("init_ad"))
    {
        StringBuffer ad_init_list = new StringBuffer("<li><a class=\"recommend_author\" href=\"javascript:void(0)\" onclick=\"clickAd(0)\">" + animation_intro_title[0] + "</a></li>");
        for(int i = 1; i < animation_intro_title.length; i++)
        {
            if(i > 10)
            {
                ad_init_list.append("<li style=\"border-bottom: 1px solid mediumpurple\"><a class=\"recommend_game\" href=\"" + game_link[i - 11] + "\" onclick=\"clickAd(" + i + ")\">" + animation_intro_title[i] + "</a></li>");
                continue;
            }
            ad_init_list.append("<li><a class=\"recommend_animation\" href=\"javascript:void(0)\" onclick=\"clickAd(" + i + ")\">" + animation_intro_title[i] + "</a></li>");
        }
        response.getWriter().write(ad_init_list.toString());
    }

    // 点击 ad_left 的选项时 ad_request 返回要求的文章的题目和内容 中间用 <split> 分割
    if(index_request[0].equals("ad"))
    {
        Integer index = Integer.parseInt(index_request[1]);
        response.getWriter().write(animation_intro_title[index] + "<split>" + animation_intro_text[index]);
    }

    // 页面初始化时 music_request 返回音乐的名字的innerHTML
    if(index_request[0].equals("music"))
    {
        StringBuffer music_list = new StringBuffer();
        for(int i = 0; i < music_name.length; i++)
        {
            music_list.append("<li><a href=\"javascript:clickMusicButton(" + i + ")\">" + music_name[i] + "</a></li>");
        }
        response.getWriter().write(music_list.toString());
    }

    // 页面初始化时 blog_request 返回博客 title introduction 的 innerHTML
    if(index_request[0].equals("blog"))
    {
        StringBuffer blog_list = new StringBuffer();
        for(int i = 0; i < blog_title_intro.length / 2; i++)
        {
            blog_list.append("<li><a href=\"javascript:void(0)\">" + blog_title_intro[i * 2] + "</a><span>" + blog_title_intro[i * 2 + 1] + "</span></li>");
        }
        System.out.println(blog_list);
        response.getWriter().write(blog_list.toString());
    }
%>
