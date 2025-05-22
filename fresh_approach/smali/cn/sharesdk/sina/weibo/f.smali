.class public Lcn/sharesdk/sina/weibo/f;
.super Lcom/mob/tools/FakeActivity;
.source "WebAuthPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcn/sharesdk/sina/weibo/sdk/a/a;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/webkit/WebView;

.field private j:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/f;)I
    .locals 0

    .line 32
    iget p0, p0, Lcn/sharesdk/sina/weibo/f;->e:I

    return p0
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/f;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcn/sharesdk/sina/weibo/f;->e:I

    return p1
.end method

.method private a()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->f:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->b()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/f;->h:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->f:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->c()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/f;->i:Landroid/webkit/WebView;

    .line 71
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->f:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->d()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/f;->g:Landroid/widget/LinearLayout;

    .line 72
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->f:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->a()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/f;->j:Landroid/widget/Button;

    .line 74
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->isRemoveCookieOnAuthorize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 79
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 82
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->i:Landroid/webkit/WebView;

    new-instance v1, Lcn/sharesdk/sina/weibo/f$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/sina/weibo/f$1;-><init>(Lcn/sharesdk/sina/weibo/f;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 114
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/f;->c()Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/f;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcn/sharesdk/sina/weibo/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8

    const-string v0, "error_code"

    const-string v1, "error_description"

    const-string v2, "error_uri"

    .line 150
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "access_token"

    .line 151
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    goto/16 :goto_3

    :cond_0
    const-string v3, "error"

    .line 153
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 154
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v5, "error_uri:"

    .line 156
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, ""

    if-eqz v6, :cond_1

    :try_start_1
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v7

    :goto_0
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "error:"

    .line 157
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v7

    :goto_1
    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "error_description:"

    .line 158
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v7

    :goto_2
    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "error_code:"

    .line 159
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_4
    invoke-virtual {v4, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v0, Ljava/lang/Throwable;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 162
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;)I

    .line 163
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 166
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/f;->finish()V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/sina/weibo/f;)Landroid/widget/LinearLayout;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/f;->g:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private b()Ljava/lang/String;
    .locals 6

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->b:Ljava/lang/String;

    const-string v3, "client_id"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "response_type"

    const-string v3, "code"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v4, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    const-string v5, "redirect_uri"

    invoke-direct {v1, v5, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v4, p0, Lcn/sharesdk/sina/weibo/f;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "packagename"

    invoke-direct {v1, v5, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v1, Lcom/mob/tools/network/KVPair;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "luicode"

    const-string v3, "10000360"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/f;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->d:Ljava/lang/String;

    const-string v3, "trans_token"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->d:Ljava/lang/String;

    const-string v3, "trans_access_token"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_0
    new-instance v1, Lcom/mob/tools/network/KVPair;

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/f;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/sharesdk/sina/weibo/sdk/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_hash"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "version"

    const-string v3, "0041005000"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "scope"

    const-string v3, "email,direct_messages_read,direct_messages_write,friendships_groups_read,friendships_groups_write,statuses_to_me_read,follow_app_official_microblog,invitation_write"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "display"

    const-string v3, "mobile"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://open.weibo.cn/oauth2/authorize?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->encodeUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/sina/weibo/f;)Landroid/webkit/WebView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/f;->i:Landroid/webkit/WebView;

    return-object p0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .line 178
    new-instance v0, Lcn/sharesdk/sina/weibo/f$2;

    invoke-direct {v0, p0}, Lcn/sharesdk/sina/weibo/f$2;-><init>(Lcn/sharesdk/sina/weibo/f;)V

    invoke-static {v0}, Lcom/mob/tools/RxMob;->create(Lcom/mob/tools/RxMob$OnSubscribe;)Lcom/mob/tools/RxMob$Subscribable;

    move-result-object v0

    .line 184
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->UI_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->subscribeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 185
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->UI_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->observeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 186
    new-instance v1, Lcn/sharesdk/sina/weibo/f$3;

    invoke-direct {v1, p0}, Lcn/sharesdk/sina/weibo/f$3;-><init>(Lcn/sharesdk/sina/weibo/f;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->subscribe(Lcom/mob/tools/RxMob$Subscriber;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/sina/weibo/f;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcn/sharesdk/sina/weibo/f;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object p0
.end method

.method static synthetic f(Lcn/sharesdk/sina/weibo/f;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/f;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/f;->b:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcn/sharesdk/sina/weibo/f;->d:Ljava/lang/String;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->h:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 120
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/f;->finish()V

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->j:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 122
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/f;->g:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 123
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/f;->i:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 124
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/f;->c()Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 62
    new-instance v0, Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/sharesdk/sina/weibo/sdk/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/f;->f:Lcn/sharesdk/sina/weibo/sdk/a/a;

    .line 63
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/f;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ssdk_sina_web_login_title"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 64
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/f;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->f:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-virtual {v2, v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->a(I)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 65
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/f;->a()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->i:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 214
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusable(Z)V

    :cond_0
    return-void
.end method

.method public onFinish()Z
    .locals 1

    .line 171
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 174
    :cond_0
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onFinish()Z

    move-result v0

    return v0
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 200
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 201
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz p1, :cond_0

    .line 202
    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/f;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
