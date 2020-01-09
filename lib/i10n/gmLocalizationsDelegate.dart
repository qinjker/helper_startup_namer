import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;

class GmLocalizationsDelegate extends LocalizationsDelegate<GmLocalizations> {
  const GmLocalizationsDelegate();

  //是否支持某个Local
  @override
  bool isSupported(Locale locale) => ['en', 'zh'].contains(locale.languageCode);

  // Flutter会调用此类加载相应的Locale资源类
  @override
  Future<GmLocalizations> load(Locale locale) {
    print("xxxx$locale");
    return SynchronousFuture<GmLocalizations>(
        GmLocalizations(locale.languageCode == "zh")
    );
  }

  @override
  bool shouldReload(GmLocalizationsDelegate old) => false;
}

class GmLocalizations {
  GmLocalizations(this.isZh);
  //是否为中文
  bool isZh = false;
  //为了使用方便，我们定义一个静态方法
  static GmLocalizations of(BuildContext context) {
    return Localizations.of<GmLocalizations>(context, GmLocalizations);
  }
  //Locale相关值，title为应用标题
  String get title {
    return isZh ? "Flutter应用" : "Flutter APP";
  }
  String get home {
    return isZh ? '主页' : "Flutter APP";
  }
  String get login {
    return isZh ? '登录' : 'login';
  }
  String get theme {
    return 'theme';
  }
  String get language {
    return 'Language';
  }
  String get noDescription {
    return '没有描述';
  }
  String get userName {
    return '用户名';
  }
  String get userNameOrEmail {
    return '用户名或邮箱';
  }
  String get userNameRequired {
    return '用户名必填';
  }
  String get password {
    return '密码';
  }
  String get passwordRequired {
    return '密码必填';
  }
  String get userNameOrPasswordWrong {
    return '密码或用户名错误';
  }
  String get auto {
    return '自动';
  }
  String get logout {
    return '退出';
  }
  String get logoutTip{
    return '退出提示';
  }
  String get cancel {
    return '取消';
  }
  String get yes {
    return '确认';
  }

//... 其它的值
}