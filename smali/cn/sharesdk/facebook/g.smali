.class public Lcn/sharesdk/facebook/g;
.super Lcom/mob/tools/FakeActivity;
.source "WebShareActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcn/sharesdk/framework/PlatformActionListener;

.field private c:Lcn/sharesdk/facebook/a;

.field private d:Lcn/sharesdk/framework/authorize/RegisterView;

.field private e:Landroid/webkit/WebView;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/facebook/g;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/sharesdk/facebook/g;->b:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic a(Lcn/sharesdk/facebook/g;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcn/sharesdk/facebook/g;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b()Lcn/sharesdk/facebook/a;
    .locals 4

    const/4 v0, 0x0

    .line 57
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/facebook/g;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/facebook/g;->activity:Landroid/app/Activity;

    .line 58
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    .line 57
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 59
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "FBWebShareAdapter"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 60
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 66
    instance-of v2, v1, Lcn/sharesdk/facebook/a;

    if-nez v2, :cond_1

    return-object v0

    .line 70
    :cond_1
    check-cast v1, Lcn/sharesdk/facebook/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_2
    :goto_0
    return-object v0

    :catchall_0
    move-exception v1

    .line 72
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 159
    :goto_0
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    .line 161
    iput-boolean v2, p0, Lcn/sharesdk/facebook/g;->f:Z

    .line 162
    invoke-virtual {p0}, Lcn/sharesdk/facebook/g;->finish()V

    .line 163
    iget-object p1, p0, Lcn/sharesdk/facebook/g;->b:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to parse callback uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    return-void

    :cond_1
    const-string v0, "post_id"

    .line 167
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 168
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 169
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 170
    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "error_code"

    .line 173
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "error"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 190
    :cond_3
    iput-boolean v2, p0, Lcn/sharesdk/facebook/g;->g:Z

    .line 191
    invoke-virtual {p0}, Lcn/sharesdk/facebook/g;->finish()V

    .line 192
    iget-object p1, p0, Lcn/sharesdk/facebook/g;->b:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {p1, v3, v1, v5}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    return-void

    .line 174
    :cond_4
    :goto_1
    iget-object v1, p0, Lcn/sharesdk/facebook/g;->b:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_6

    .line 175
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/16 v4, 0x9

    if-eqz v0, :cond_5

    const-string v0, "4201"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 178
    iget-object p1, p0, Lcn/sharesdk/facebook/g;->b:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {p1, v3, v4}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    goto :goto_2

    .line 180
    :cond_5
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 181
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->b:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3, v4, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 185
    :cond_6
    :goto_2
    iput-boolean v2, p0, Lcn/sharesdk/facebook/g;->f:Z

    .line 186
    invoke-virtual {p0}, Lcn/sharesdk/facebook/g;->finish()V

    return-void
.end method


# virtual methods
.method protected a()Lcn/sharesdk/framework/authorize/RegisterView;
    .locals 5

    .line 108
    new-instance v0, Lcn/sharesdk/framework/authorize/RegisterView;

    iget-object v1, p0, Lcn/sharesdk/facebook/g;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/sharesdk/framework/authorize/RegisterView;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getChildCount()I

    move-result v1

    .line 110
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/TitleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 111
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->a()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcn/sharesdk/facebook/g$1;

    invoke-direct {v2, p0}, Lcn/sharesdk/facebook/g$1;-><init>(Lcn/sharesdk/facebook/g;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/facebook/g;->e:Landroid/webkit/WebView;

    .line 128
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 129
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 130
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 131
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 132
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 133
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    const/4 v2, 0x0

    .line 134
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 135
    iget-object v3, p0, Lcn/sharesdk/facebook/g;->activity:Landroid/app/Activity;

    const-string v4, "database"

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcn/sharesdk/facebook/g;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 138
    iget-object v1, p0, Lcn/sharesdk/facebook/g;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 139
    iget-object v1, p0, Lcn/sharesdk/facebook/g;->e:Landroid/webkit/WebView;

    new-instance v2, Lcn/sharesdk/facebook/g$2;

    invoke-direct {v2, p0}, Lcn/sharesdk/facebook/g$2;-><init>(Lcn/sharesdk/facebook/g;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-object v0
.end method

.method public a(Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcn/sharesdk/facebook/g;->b:Lcn/sharesdk/framework/PlatformActionListener;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcn/sharesdk/facebook/g;->a:Ljava/lang/String;

    return-void
.end method

.method public onCreate()V
    .locals 5

    .line 78
    invoke-virtual {p0}, Lcn/sharesdk/facebook/g;->a()Lcn/sharesdk/framework/authorize/RegisterView;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/facebook/g;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lcn/sharesdk/facebook/g;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ssdk_share_to_facebook"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 82
    iget-object v1, p0, Lcn/sharesdk/facebook/g;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getTvTitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 85
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 86
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/TitleLayout;->setVisibility(I)V

    .line 89
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    iget-object v1, p0, Lcn/sharesdk/facebook/g;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->d()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/facebook/a;->a(Landroid/widget/RelativeLayout;)V

    .line 90
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    iget-object v1, p0, Lcn/sharesdk/facebook/g;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/facebook/a;->a(Landroid/webkit/WebView;)V

    .line 91
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    iget-object v1, p0, Lcn/sharesdk/facebook/g;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/facebook/a;->a(Lcn/sharesdk/framework/TitleLayout;)V

    .line 92
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    invoke-virtual {v0}, Lcn/sharesdk/facebook/a;->a()V

    .line 93
    invoke-virtual {p0}, Lcn/sharesdk/facebook/g;->disableScreenCapture()Z

    .line 94
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/sharesdk/facebook/g;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 96
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcn/sharesdk/facebook/g;->f:Z

    .line 99
    invoke-virtual {p0}, Lcn/sharesdk/facebook/g;->finish()V

    .line 100
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->b:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "failed to load webpage, network disconnected."

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/facebook/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 226
    iget-boolean v0, p0, Lcn/sharesdk/facebook/g;->f:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/sharesdk/facebook/g;->g:Z

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->b:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 232
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    if-eqz v0, :cond_2

    .line 233
    invoke-virtual {v0}, Lcn/sharesdk/facebook/a;->b()V

    :cond_2
    return-void
.end method

.method public onFinish()Z
    .locals 1

    .line 238
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Lcn/sharesdk/facebook/a;->h()Z

    move-result v0

    return v0

    .line 241
    :cond_0
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onFinish()Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Lcn/sharesdk/facebook/a;->d()V

    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 1

    .line 220
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Lcn/sharesdk/facebook/a;->g()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Lcn/sharesdk/facebook/a;->e()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 196
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Lcn/sharesdk/facebook/a;->c()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Lcn/sharesdk/facebook/a;->f()V

    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lcom/mob/tools/FakeActivity;->setActivity(Landroid/app/Activity;)V

    .line 46
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    if-nez v0, :cond_0

    .line 47
    invoke-direct {p0}, Lcn/sharesdk/facebook/g;->b()Lcn/sharesdk/facebook/a;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcn/sharesdk/facebook/a;

    invoke-direct {v0}, Lcn/sharesdk/facebook/a;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    .line 52
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/facebook/g;->c:Lcn/sharesdk/facebook/a;

    invoke-virtual {v0, p1}, Lcn/sharesdk/facebook/a;->a(Landroid/app/Activity;)V

    return-void
.end method
