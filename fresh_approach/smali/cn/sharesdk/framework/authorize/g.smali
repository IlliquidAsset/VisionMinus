.class public Lcn/sharesdk/framework/authorize/g;
.super Lcn/sharesdk/framework/authorize/a;
.source "WebAuthorizeActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcn/sharesdk/framework/authorize/ResizeLayout$OnResizeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/framework/authorize/g$a;
    }
.end annotation


# instance fields
.field protected b:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field private c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

.field private d:Lcn/sharesdk/framework/authorize/RegisterView;

.field private e:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcn/sharesdk/framework/authorize/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/framework/authorize/g;)Landroid/app/Activity;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/sharesdk/framework/authorize/g;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic b(Lcn/sharesdk/framework/authorize/g;)Landroid/app/Activity;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/sharesdk/framework/authorize/g;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method private c()Lcn/sharesdk/framework/authorize/AuthorizeAdapter;
    .locals 4

    const/4 v0, 0x0

    .line 62
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/g;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/framework/authorize/g;->activity:Landroid/app/Activity;

    .line 63
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    .line 62
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 64
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_4

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "AuthorizeAdapter"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 69
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 71
    :cond_1
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "Adapter"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 72
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    goto :goto_0

    .line 77
    :cond_2
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 79
    instance-of v2, v1, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-nez v2, :cond_3

    return-object v0

    .line 83
    :cond_3
    check-cast v1, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_4
    :goto_0
    return-object v0

    :catchall_0
    move-exception v1

    .line 85
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    return-object v0
.end method


# virtual methods
.method public OnResize(IIII)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onResize(IIII)V

    :cond_0
    return-void
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcn/sharesdk/framework/authorize/g;->b:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-void
.end method

.method protected b()Lcn/sharesdk/framework/authorize/RegisterView;
    .locals 4

    .line 130
    new-instance v0, Lcn/sharesdk/framework/authorize/RegisterView;

    iget-object v1, p0, Lcn/sharesdk/framework/authorize/g;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/sharesdk/framework/authorize/RegisterView;-><init>(Landroid/content/Context;)V

    .line 131
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->a()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcn/sharesdk/framework/authorize/g$1;

    invoke-direct {v2, p0}, Lcn/sharesdk/framework/authorize/g$1;-><init>(Lcn/sharesdk/framework/authorize/g;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/framework/authorize/g;->e:Landroid/webkit/WebView;

    .line 153
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    .line 154
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 155
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 157
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 159
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    const/4 v2, 0x0

    .line 160
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 161
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/g;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 162
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/g;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 166
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/g;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v1, p0}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/g;)Lcn/sharesdk/framework/authorize/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 171
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "GooglePlusAuthorizeWebviewClient"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 172
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "GooglePlus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const-string v3, "YoutubeAuthorizeWebviewClient"

    .line 173
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 175
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mozilla/5.0 (Linux; Android 5.1; m2 note Build/LMY47D) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "AppleWebKit/537.36 (KHTML, like Gecko) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Version/4.0 "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Chrome/40.0.2214.127 "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Mobile Safari/537.36"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    iget-object v3, p0, Lcn/sharesdk/framework/authorize/g;->e:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 181
    :cond_4
    iget-object v2, p0, Lcn/sharesdk/framework/authorize/g;->e:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 182
    new-instance v1, Lcn/sharesdk/framework/authorize/g$2;

    invoke-direct {v1, p0}, Lcn/sharesdk/framework/authorize/g$2;-><init>(Lcn/sharesdk/framework/authorize/g;)V

    .line 206
    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/g$2;->start()V

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 211
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 213
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    const-string v2, ")"

    if-ne v0, v1, :cond_1

    .line 214
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/g;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getAuthorizeListener()Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network error (platform: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/sharesdk/framework/authorize/g;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 220
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 221
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    invoke-virtual {p0}, Lcn/sharesdk/framework/authorize/g;->finish()V

    .line 223
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/g;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getAuthorizeListener()Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Authorize URL is empty (platform: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/sharesdk/framework/authorize/g;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 231
    :cond_2
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreate()V
    .locals 10

    .line 92
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcn/sharesdk/framework/authorize/g;->b()Lcn/sharesdk/framework/authorize/RegisterView;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/authorize/g;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    .line 94
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/authorize/RegisterView;->a(Lcn/sharesdk/framework/authorize/ResizeLayout$OnResizeListener;)V

    .line 95
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    iget-object v1, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->isNotitle()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/authorize/RegisterView;->a(Z)V

    .line 96
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    iget-object v1, p0, Lcn/sharesdk/framework/authorize/g;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->d()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->setBodyView(Landroid/widget/RelativeLayout;)V

    .line 97
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    iget-object v1, p0, Lcn/sharesdk/framework/authorize/g;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->setWebView(Landroid/webkit/WebView;)V

    .line 98
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->setTitleView(Lcn/sharesdk/framework/TitleLayout;)V

    .line 100
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/g;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    .line 101
    iget-object v2, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    iget-object v3, p0, Lcn/sharesdk/framework/authorize/g;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v3}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v3

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->setPlatformName(Ljava/lang/String;)V

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcn/sharesdk/framework/authorize/g;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ssdk_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 104
    invoke-virtual {v0}, Lcn/sharesdk/framework/TitleLayout;->getTvTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 108
    :try_start_1
    invoke-virtual {p0}, Lcn/sharesdk/framework/authorize/g;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ssdk_weibo_oauth_regiseter"

    .line 107
    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 109
    invoke-virtual {v0}, Lcn/sharesdk/framework/TitleLayout;->getTvTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 111
    :catchall_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 116
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onCreate()V

    .line 117
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->isPopUpAnimationDisable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v1, 0x226

    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 122
    new-instance v1, Lcn/sharesdk/framework/authorize/g$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcn/sharesdk/framework/authorize/g$a;-><init>(Lcn/sharesdk/framework/authorize/g$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 123
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/g;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/authorize/RegisterView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcn/sharesdk/framework/authorize/g;->disableScreenCapture()Z

    .line 126
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/sharesdk/framework/authorize/g;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onDestroy()V

    .line 309
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 310
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusable(Z)V

    :cond_1
    return-void
.end method

.method public onFinish()Z
    .locals 1

    .line 291
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onFinish()Z

    move-result v0

    return v0

    .line 294
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 296
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 298
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 300
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 302
    :cond_2
    invoke-super {p0}, Lcn/sharesdk/framework/authorize/a;->onFinish()Z

    move-result v0

    return v0
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 246
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0, p1, p2}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 250
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 251
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/g;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getAuthorizeListener()Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 253
    invoke-interface {v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    :cond_1
    if-eqz v0, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    .line 256
    :cond_2
    invoke-super {p0, p1, p2}, Lcn/sharesdk/framework/authorize/a;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result p1

    :goto_1
    return p1
.end method

.method public onPause()V
    .locals 1

    .line 266
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onPause()V

    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onRestart()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 272
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 260
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 278
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onStop()V

    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lcn/sharesdk/framework/authorize/a;->setActivity(Landroid/app/Activity;)V

    .line 51
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-nez v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcn/sharesdk/framework/authorize/g;->c()Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    invoke-direct {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    .line 57
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->setActivity(Landroid/app/Activity;)V

    return-void
.end method
