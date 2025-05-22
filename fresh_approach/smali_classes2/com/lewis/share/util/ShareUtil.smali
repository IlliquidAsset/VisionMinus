.class public Lcom/lewis/share/util/ShareUtil;
.super Ljava/lang/Object;
.source "ShareUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 213
    sget-object v0, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "com.tencent.mm.ui.tools.ShareImgUI"

    goto :goto_0

    .line 215
    :cond_0
    sget-object v0, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    goto :goto_0

    .line 217
    :cond_1
    sget-object v0, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "com.tencent.mobileqq.activity.JumpActivity"

    goto :goto_0

    .line 219
    :cond_2
    sget-object v0, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "com.qzonex.module.operation.ui.QZonePublishMoodActivity"

    goto :goto_0

    .line 221
    :cond_3
    sget-object v0, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "com.sina.weibo.composerinde.ComposerDispatchActivity"

    goto :goto_0

    :cond_4
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private static getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 193
    sget-object v0, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    sget-object v0, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "com.tencent.mobileqq"

    goto :goto_1

    .line 197
    :cond_1
    sget-object v0, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "com.qzone"

    goto :goto_1

    .line 199
    :cond_2
    sget-object v0, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "com.sina.weibo"

    goto :goto_1

    :cond_3
    const-string p0, ""

    goto :goto_1

    :cond_4
    :goto_0
    const-string p0, "com.tencent.mm"

    :goto_1
    return-object p0
.end method

.method public static getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;
    .locals 0

    .line 234
    invoke-static {p0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object p0

    return-object p0
.end method

.method public static getQQName()Ljava/lang/String;
    .locals 1

    .line 246
    sget-object v0, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static getQZoneName()Ljava/lang/String;
    .locals 1

    .line 250
    sget-object v0, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static getSinaWeiboName()Ljava/lang/String;
    .locals 1

    .line 253
    sget-object v0, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static getWeChatName()Ljava/lang/String;
    .locals 1

    .line 238
    sget-object v0, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static getWechatMomentsName()Ljava/lang/String;
    .locals 1

    .line 242
    sget-object v0, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static shareByPlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 38
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    const/4 v1, 0x2

    .line 39
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform$ShareParams;->setShareType(I)V

    .line 40
    invoke-virtual {v0, p2}, Lcn/sharesdk/framework/Platform$ShareParams;->setImagePath(Ljava/lang/String;)V

    .line 43
    invoke-static {p1}, Lcom/lewis/share/util/ShareUtil;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object p2

    .line 44
    sget-object v1, Lcn/sharesdk/twitter/Twitter;->NAME:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    sget p1, Lcom/powervision/base/R$string;->APP_Mine_40:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    new-instance p1, Lcom/lewis/share/util/ShareUtil$1;

    invoke-direct {p1, p0}, Lcom/lewis/share/util/ShareUtil$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 70
    invoke-virtual {p2, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    :goto_1
    return-void
.end method

.method public static shareVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 125
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    const/4 v1, 0x6

    .line 126
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform$ShareParams;->setShareType(I)V

    .line 127
    invoke-virtual {v0, p2}, Lcn/sharesdk/framework/Platform$ShareParams;->setFilePath(Ljava/lang/String;)V

    .line 129
    invoke-static {p1}, Lcom/lewis/share/util/ShareUtil;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object p2

    .line 130
    sget-object v1, Lcn/sharesdk/twitter/Twitter;->NAME:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    sget p1, Lcom/powervision/base/R$string;->APP_Mine_40:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 131
    :cond_1
    :goto_0
    new-instance p1, Lcom/lewis/share/util/ShareUtil$3;

    invoke-direct {p1, p0}, Lcom/lewis/share/util/ShareUtil$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 156
    invoke-virtual {p2, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    :goto_1
    return-void
.end method

.method public static shareVideoByIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    .line 171
    invoke-static {p1}, Lcom/lewis/share/util/ShareUtil;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "video/*"

    .line 174
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    .line 176
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const-string v1, "android.intent.extra.STREAM"

    .line 178
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 179
    invoke-static {p1}, Lcom/lewis/share/util/ShareUtil;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/lewis/share/util/ShareUtil;->getClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "Share"

    .line 180
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 182
    :cond_1
    sget p1, Lcom/powervision/base/R$string;->APP_Mine_40:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public static shareVideoToSina(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 82
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    const/4 v1, 0x6

    .line 83
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform$ShareParams;->setShareType(I)V

    .line 84
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/Platform$ShareParams;->setFilePath(Ljava/lang/String;)V

    .line 85
    sget p1, Lcom/powervision/base/R$string;->AP03_MediaLib_3:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 86
    sget-object p1, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    invoke-static {p1}, Lcom/lewis/share/util/ShareUtil;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    new-instance v1, Lcom/lewis/share/util/ShareUtil$2;

    invoke-direct {v1, p0}, Lcom/lewis/share/util/ShareUtil$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 112
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    goto :goto_0

    .line 114
    :cond_0
    sget p1, Lcom/powervision/base/R$string;->APP_Mine_40:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
