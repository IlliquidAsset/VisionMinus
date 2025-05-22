.class public Lcn/sharesdk/framework/h;
.super Ljava/lang/Object;
.source "ShareSDKCore.java"


# direct methods
.method public static a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 8

    .line 152
    invoke-static {}, Lcn/sharesdk/framework/utils/i;->a()Lcn/sharesdk/framework/utils/i;

    const-string v3, "UTF_8"

    const-string v4, "H"

    const-string v5, "2"

    const/high16 v6, -0x1000000

    const/4 v7, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 153
    invoke-static/range {v0 .. v7}, Lcn/sharesdk/framework/utils/i;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/sharesdk/framework/Platform;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-static {}, Lcn/sharesdk/framework/h;->e()Ljava/util/ArrayList;

    move-result-object v0

    .line 32
    invoke-static {v0}, Lcn/sharesdk/framework/h;->a(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public static a(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 267
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "fakelist"

    .line 272
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_1

    return-object v0

    .line 277
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ShareSDK"

    const-string v2, "parseDevInfo"

    .line 278
    invoke-static {v1, v2}, Lcom/mob/commons/eventrecoder/EventRecorder;->addBegin(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v4, "snsplat"

    .line 283
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    .line 286
    :try_start_0
    invoke-static {v4}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    .line 288
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 v4, -0x1

    :goto_1
    if-ne v4, v5, :cond_3

    goto :goto_0

    .line 295
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 297
    :cond_4
    invoke-static {v1, v2}, Lcom/mob/commons/eventrecoder/EventRecorder;->addEnd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-object v0
.end method

.method public static a(ILcn/sharesdk/framework/Platform;)V
    .locals 2

    .line 235
    new-instance v0, Lcn/sharesdk/framework/b/b/d;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/d;-><init>()V

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "SHARESDK_CANCEL_SHARE"

    .line 241
    iput-object p0, v0, Lcn/sharesdk/framework/b/b/d;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p0, "SHARESDK_FAILED_SHARE"

    .line 240
    iput-object p0, v0, Lcn/sharesdk/framework/b/b/d;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p0, "SHARESDK_EDIT_SHARE"

    .line 239
    iput-object p0, v0, Lcn/sharesdk/framework/b/b/d;->a:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string p0, "SHARESDK_CANCEL_SHAREMENU"

    .line 238
    iput-object p0, v0, Lcn/sharesdk/framework/b/b/d;->a:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string p0, "SHARESDK_ENTER_SHAREMENU"

    .line 237
    iput-object p0, v0, Lcn/sharesdk/framework/b/b/d;->a:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_5

    .line 245
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getPlatformId()I

    move-result p0

    iput p0, v0, Lcn/sharesdk/framework/b/b/d;->b:I

    .line 247
    :cond_5
    invoke-static {}, Lcn/sharesdk/framework/b/d;->a()Lcn/sharesdk/framework/b/d;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 249
    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/b/d;->a(Lcn/sharesdk/framework/b/b/c;)V

    :cond_6
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1

    .line 125
    invoke-static {}, Lcn/sharesdk/framework/authorize/b;->b()Lcn/sharesdk/framework/authorize/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/authorize/b;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/os/Handler;)V
    .locals 1

    .line 209
    invoke-static {}, Lcn/sharesdk/framework/b/d;->a()Lcn/sharesdk/framework/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/b/d;->a(Landroid/os/Handler;)V

    .line 212
    invoke-virtual {v0}, Lcn/sharesdk/framework/b/d;->d()V

    :cond_0
    return-void
.end method

.method public static a(Lcn/sharesdk/framework/loopshare/LoopShareResultListener;)V
    .locals 3

    .line 174
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->a()Lcn/sharesdk/framework/loopshare/MobLinkAPI;

    .line 175
    invoke-static {p0}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->b(Lcn/sharesdk/framework/loopshare/LoopShareResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 177
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShareSDKCore prepareLoopShare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 2

    .line 254
    invoke-static {}, Lcn/sharesdk/framework/b/d;->a()Lcn/sharesdk/framework/b/d;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 259
    :cond_0
    new-instance v1, Lcn/sharesdk/framework/b/b/a;

    invoke-direct {v1}, Lcn/sharesdk/framework/b/b/a;-><init>()V

    .line 260
    iput-object p0, v1, Lcn/sharesdk/framework/b/b/a;->b:Ljava/lang/String;

    .line 261
    iput p1, v1, Lcn/sharesdk/framework/b/b/a;->a:I

    .line 262
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/b/d;->a(Lcn/sharesdk/framework/b/b/c;)V

    return-void
.end method

.method public static a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/sharesdk/framework/Platform;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 113
    :cond_0
    new-instance v0, Lcn/sharesdk/framework/h$1;

    invoke-direct {v0}, Lcn/sharesdk/framework/h$1;-><init>()V

    .line 121
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static a(Ljava/util/HashMap;Lcn/sharesdk/framework/loopshare/MoblinkActionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcn/sharesdk/framework/loopshare/MoblinkActionListener;",
            ")V"
        }
    .end annotation

    .line 161
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->a()Lcn/sharesdk/framework/loopshare/MobLinkAPI;

    .line 162
    invoke-static {p0, p1}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->a(Ljava/util/HashMap;Lcn/sharesdk/framework/loopshare/MoblinkActionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 164
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShareSDKCore mobLinkGetMobID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public static a(Z)V
    .locals 1

    .line 137
    invoke-static {}, Lcn/sharesdk/framework/authorize/f;->c()Lcn/sharesdk/framework/authorize/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/authorize/f;->a(Z)V

    :cond_0
    return-void
.end method

.method public static b()Landroid/app/Activity;
    .locals 1

    .line 132
    invoke-static {}, Lcn/sharesdk/framework/authorize/b;->b()Lcn/sharesdk/framework/authorize/b;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/b;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static c()Z
    .locals 1

    .line 144
    invoke-static {}, Lcn/sharesdk/framework/authorize/f;->c()Lcn/sharesdk/framework/authorize/f;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/f;->a()Z

    move-result v0

    return v0
.end method

.method public static d()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 197
    invoke-static {}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->a()Lcn/sharesdk/framework/loopshare/MobLinkAPI;

    .line 198
    invoke-static {}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->c()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private static e()Ljava/util/ArrayList;
    .locals 47
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/sharesdk/framework/Platform;",
            ">;"
        }
    .end annotation

    const-string v0, "cn.sharesdk.douban.Douban"

    const-string v1, "cn.sharesdk.evernote.Evernote"

    const-string v2, "cn.sharesdk.facebook.Facebook"

    const-string v3, "cn.sharesdk.renren.Renren"

    const-string v4, "cn.sharesdk.sina.weibo.SinaWeibo"

    const-string v5, "cn.sharesdk.kaixin.KaiXin"

    const-string v6, "cn.sharesdk.linkedin.LinkedIn"

    const-string v7, "cn.sharesdk.system.email.Email"

    const-string v8, "cn.sharesdk.system.text.ShortMessage"

    const-string v9, "cn.sharesdk.tencent.qq.QQ"

    const-string v10, "cn.sharesdk.tencent.qzone.QZone"

    const-string v11, "cn.sharesdk.tencent.weibo.TencentWeibo"

    const-string v12, "cn.sharesdk.twitter.Twitter"

    const-string v13, "cn.sharesdk.wechat.friends.Wechat"

    const-string v14, "cn.sharesdk.wechat.moments.WechatMoments"

    const-string v15, "cn.sharesdk.wechat.favorite.WechatFavorite"

    const-string v16, "cn.sharesdk.youdao.YouDao"

    const-string v17, "cn.sharesdk.google.GooglePlus"

    const-string v18, "cn.sharesdk.foursquare.FourSquare"

    const-string v19, "cn.sharesdk.pinterest.Pinterest"

    const-string v20, "cn.sharesdk.flickr.Flickr"

    const-string v21, "cn.sharesdk.tumblr.Tumblr"

    const-string v22, "cn.sharesdk.dropbox.Dropbox"

    const-string v23, "cn.sharesdk.vkontakte.VKontakte"

    const-string v24, "cn.sharesdk.instagram.Instagram"

    const-string v25, "cn.sharesdk.yixin.friends.Yixin"

    const-string v26, "cn.sharesdk.yixin.moments.YixinMoments"

    const-string v27, "cn.sharesdk.mingdao.Mingdao"

    const-string v28, "cn.sharesdk.line.Line"

    const-string v29, "cn.sharesdk.kakao.story.KakaoStory"

    const-string v30, "cn.sharesdk.kakao.talk.KakaoTalk"

    const-string v31, "cn.sharesdk.whatsapp.WhatsApp"

    const-string v32, "cn.sharesdk.pocket.Pocket"

    const-string v33, "cn.sharesdk.instapaper.Instapaper"

    const-string v34, "cn.sharesdk.facebookmessenger.FacebookMessenger"

    const-string v35, "cn.sharesdk.alipay.friends.Alipay"

    const-string v36, "cn.sharesdk.alipay.moments.AlipayMoments"

    const-string v37, "cn.sharesdk.dingding.friends.Dingding"

    const-string v38, "cn.sharesdk.youtube.Youtube"

    const-string v39, "cn.sharesdk.meipai.Meipai"

    const-string v40, "cn.sharesdk.telegram.Telegram"

    const-string v41, "cn.sharesdk.cmcc.Cmcc"

    const-string v42, "cn.sharesdk.reddit.Reddit"

    const-string v43, "cn.sharesdk.telecom.Telecom"

    const-string v44, "cn.sharesdk.accountkit.Accountkit"

    const-string v45, "cn.sharesdk.douyin.Douyin"

    const-string v46, "cn.sharesdk.wework.Wework"

    .line 37
    filled-new-array/range {v0 .. v46}, [Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x2f

    if-ge v3, v4, :cond_0

    .line 96
    aget-object v4, v0, v3

    .line 98
    :try_start_0
    invoke-static {v4}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    .line 99
    invoke-static {v4, v5}, Lcom/mob/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 100
    check-cast v4, Lcn/sharesdk/framework/Platform;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
