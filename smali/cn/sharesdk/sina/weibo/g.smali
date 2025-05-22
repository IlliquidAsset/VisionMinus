.class public Lcn/sharesdk/sina/weibo/g;
.super Lcom/mob/tools/FakeActivity;
.source "WebSharePage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcn/sharesdk/framework/Platform$ShareParams;

.field private d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field private e:Lcn/sharesdk/sina/weibo/sdk/a/a;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/webkit/WebView;

.field private i:Landroid/widget/Button;

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/g;)I
    .locals 0

    .line 35
    iget p0, p0, Lcn/sharesdk/sina/weibo/g;->j:I

    return p0
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/g;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcn/sharesdk/sina/weibo/g;->j:I

    return p1
.end method

.method private a()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/g;->e:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->b()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/g;->g:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/g;->e:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->c()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/g;->h:Landroid/webkit/WebView;

    .line 74
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/g;->e:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->d()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/g;->f:Landroid/widget/LinearLayout;

    .line 75
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/g;->e:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->a()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/g;->i:Landroid/widget/Button;

    .line 77
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/g;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/g;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->isRemoveCookieOnAuthorize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/g;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 82
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 85
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/g;->h:Landroid/webkit/WebView;

    new-instance v1, Lcn/sharesdk/sina/weibo/g$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/sina/weibo/g$1;-><init>(Lcn/sharesdk/sina/weibo/g;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 117
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/g;->b()Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/g;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcn/sharesdk/sina/weibo/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 134
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "code"

    .line 135
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg"

    .line 136
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/g;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v2, :cond_2

    .line 138
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/g;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    goto :goto_0

    :cond_0
    const-string v2, "0"

    .line 140
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/g;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/g;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 147
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/g;->finish()V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/sina/weibo/g;)Landroid/widget/LinearLayout;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/g;->f:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private b()Ljava/lang/String;
    .locals 2

    .line 166
    new-instance v0, Lcn/sharesdk/sina/weibo/g$2;

    invoke-direct {v0, p0}, Lcn/sharesdk/sina/weibo/g$2;-><init>(Lcn/sharesdk/sina/weibo/g;)V

    invoke-static {v0}, Lcom/mob/tools/RxMob;->create(Lcom/mob/tools/RxMob$OnSubscribe;)Lcom/mob/tools/RxMob$Subscribable;

    move-result-object v0

    .line 172
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->subscribeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 173
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->UI_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->observeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 174
    new-instance v1, Lcn/sharesdk/sina/weibo/g$3;

    invoke-direct {v1, p0}, Lcn/sharesdk/sina/weibo/g$3;-><init>(Lcn/sharesdk/sina/weibo/g;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->subscribe(Lcom/mob/tools/RxMob$Subscriber;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic b(Lcn/sharesdk/sina/weibo/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcn/sharesdk/sina/weibo/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/g;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/g;->a:Ljava/lang/String;

    const-string v3, "source"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/g;->b:Ljava/lang/String;

    const-string v3, "access_token"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/g;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "packagename"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "picinfo"

    invoke-direct {v1, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance p1, Lcom/mob/tools/network/KVPair;

    const-string v1, "luicode"

    const-string v2, "10000360"

    invoke-direct {p1, v1, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance p1, Lcom/mob/tools/network/KVPair;

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/g;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/g;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/sharesdk/sina/weibo/sdk/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_hash"

    invoke-direct {p1, v2, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance p1, Lcom/mob/tools/network/KVPair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OP_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lfid"

    invoke-direct {p1, v2, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance p1, Lcom/mob/tools/network/KVPair;

    const-string v1, "version"

    const-string v2, "0041005000"

    invoke-direct {p1, v1, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://service.weibo.com/share/mobilesdk.php?"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->encodeUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic c(Lcn/sharesdk/sina/weibo/g;)Landroid/webkit/WebView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/g;->h:Landroid/webkit/WebView;

    return-object p0
.end method

.method private c()Ljava/lang/String;
    .locals 11

    const-string v0, "data"

    const-string v1, "code"

    const/4 v2, 0x0

    .line 220
    :try_start_0
    iget-object v3, p0, Lcn/sharesdk/sina/weibo/g;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 221
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/g;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 222
    iget-object v3, p0, Lcn/sharesdk/sina/weibo/g;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    .line 223
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/g;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 224
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/g;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcn/sharesdk/sina/weibo/g;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 227
    new-instance v4, Lcom/sina/weibo/sdk/api/ImageObject;

    invoke-direct {v4}, Lcom/sina/weibo/sdk/api/ImageObject;-><init>()V

    .line 228
    invoke-virtual {v4, v3}, Lcom/sina/weibo/sdk/api/ImageObject;->setImageObject(Landroid/graphics/Bitmap;)V

    .line 229
    iget-object v3, v4, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    if-eqz v3, :cond_2

    iget-object v3, v4, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    array-length v3, v3

    if-lez v3, :cond_2

    .line 230
    new-instance v3, Ljava/lang/String;

    iget-object v4, v4, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    invoke-static {v4}, Lcn/sharesdk/sina/weibo/sdk/a;->a([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    :cond_2
    move-object v3, v2

    .line 234
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v2

    .line 238
    :cond_3
    new-instance v5, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v5}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .line 239
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 240
    new-instance v4, Lcom/mob/tools/network/KVPair;

    const-string v6, "img"

    invoke-direct {v4, v6, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v8, 0x3e8

    div-long/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 242
    new-instance v4, Lcom/mob/tools/network/KVPair;

    const-string v6, "oauth_timestamp"

    invoke-direct {v4, v6, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/g;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 245
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/g;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_4
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/g;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 248
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/g;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v6, "http://service.weibo.com/share/mobilesdk_uppic.php"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 250
    invoke-virtual/range {v5 .. v10}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v3

    .line 252
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    return-object v2

    .line 255
    :cond_6
    new-instance v4, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v4}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v4, v3}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 256
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_2

    .line 259
    :cond_7
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    .line 261
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_8

    return-object v0

    :cond_8
    :goto_2
    return-object v2

    :catchall_0
    move-exception v0

    .line 266
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return-object v2
.end method

.method static synthetic d(Lcn/sharesdk/sina/weibo/g;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/g;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object p0
.end method

.method static synthetic e(Lcn/sharesdk/sina/weibo/g;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/g;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/g;->c:Lcn/sharesdk/framework/Platform$ShareParams;

    return-void
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/g;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/g;->a:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcn/sharesdk/sina/weibo/g;->b:Ljava/lang/String;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/g;->g:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 122
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/g;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz p1, :cond_0

    .line 123
    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/g;->finish()V

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/g;->i:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 127
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/g;->f:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/g;->h:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 129
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/g;->b()Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 65
    new-instance v0, Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/sharesdk/sina/weibo/sdk/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/g;->e:Lcn/sharesdk/sina/weibo/sdk/a/a;

    .line 66
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/g;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ssdk_sina_web_title"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 67
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/g;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/g;->e:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {v2, v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->a(I)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 68
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/g;->a()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/g;->h:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 274
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusable(Z)V

    :cond_0
    return-void
.end method

.method public onFinish()Z
    .locals 1

    .line 197
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/g;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lcn/sharesdk/sina/weibo/g;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 200
    :cond_0
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onFinish()Z

    move-result v0

    return v0
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 205
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 206
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/g;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz p1, :cond_0

    .line 207
    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/g;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
