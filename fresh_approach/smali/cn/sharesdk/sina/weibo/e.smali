.class public Lcn/sharesdk/sina/weibo/e;
.super Lcn/sharesdk/framework/authorize/e;
.source "SinaWeiboSSOProcessor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/d;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/e;-><init>(Lcn/sharesdk/framework/authorize/d;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 114
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/e;->d:Ljava/lang/String;

    const-string p2, "appKey"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/e;->e:Ljava/lang/String;

    const-string p2, "redirectUri"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/e;->f:[Ljava/lang/String;

    if-eqz p1, :cond_0

    array-length p2, p1

    if-lez p2, :cond_0

    const-string p2, ","

    .line 119
    invoke-static {p2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "scope"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    :cond_0
    invoke-direct {p0, v0}, Lcn/sharesdk/sina/weibo/e;->b(Landroid/content/Intent;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    return p2

    .line 127
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/e;->a:Lcn/sharesdk/framework/authorize/d;

    iget v1, p0, Lcn/sharesdk/sina/weibo/e;->b:I

    invoke-virtual {p1, v0, v1}, Lcn/sharesdk/framework/authorize/d;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x1

    .line 132
    :catchall_0
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/e;->a:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {p1}, Lcn/sharesdk/framework/authorize/d;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return p2
.end method

.method private b(Landroid/content/Intent;)Z
    .locals 5

    .line 137
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->a:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return v1

    .line 142
    :cond_0
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 144
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->a:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x40

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 145
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    const-string v4, "30820295308201fea00302010202044b4ef1bf300d06092a864886f70d010105050030818d310b300906035504061302434e3110300e060355040813074265694a696e673110300e060355040713074265694a696e67312c302a060355040a132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c7464312c302a060355040b132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c74643020170d3130303131343130323831355a180f32303630303130323130323831355a30818d310b300906035504061302434e3110300e060355040813074265694a696e673110300e060355040713074265694a696e67312c302a060355040a132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c7464312c302a060355040b132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c746430819f300d06092a864886f70d010101050003818d00308189028181009d367115bc206c86c237bb56c8e9033111889b5691f051b28d1aa8e42b66b7413657635b44786ea7e85d451a12a82a331fced99c48717922170b7fc9bc1040753c0d38b4cf2b22094b1df7c55705b0989441e75913a1a8bd2bc591aa729a1013c277c01c98cbec7da5ad7778b2fad62b85ac29ca28ced588638c98d6b7df5a130203010001300d06092a864886f70d0101050500038181000ad4b4c4dec800bd8fd2991adfd70676fce8ba9692ae50475f60ec468d1b758a665e961a3aedbece9fd4d7ce9295cd83f5f19dc441a065689d9820faedbb7c4a4c4635f5ba1293f6da4b72ed32fb8795f736a20c95cda776402099054fccefb4a1a558664ab8d637288feceba9508aa907fc1fe2b1ae5a0dec954ed831c0bea4"

    .line 146
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    return v1
.end method

.method private c(Landroid/content/Intent;)V
    .locals 2

    .line 172
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "error"

    .line 176
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "error_type"

    .line 178
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 182
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/authorize/SSOListener;->onComplete(Landroid/os/Bundle;)V

    return-void

    :cond_2
    const-string v1, "access_denied"

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "OAuthAccessDeniedException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "error_description"

    .line 189
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    :cond_4
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 187
    :cond_5
    :goto_0
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/SSOListener;->onCancel()V

    :goto_1
    return-void
.end method

.method private d(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "error"

    .line 200
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "error_code"

    .line 201
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 202
    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 203
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p1, :cond_1

    .line 204
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {p1, v1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 207
    :cond_0
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p1, :cond_1

    .line 208
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/SSOListener;->onCancel()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sina.weibo"

    const-string v2, "com.sina.weibo.business.RemoteSSOService"

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/e;->a:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->a:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/d;->finish()V

    .line 65
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e;->a:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/d;->finish()V

    .line 159
    iget v0, p0, Lcn/sharesdk/sina/weibo/e;->b:I

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    invoke-direct {p0, p3}, Lcn/sharesdk/sina/weibo/e;->d(Landroid/content/Intent;)V

    goto :goto_0

    .line 162
    :cond_1
    invoke-direct {p0, p3}, Lcn/sharesdk/sina/weibo/e;->c(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/e;->d:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcn/sharesdk/sina/weibo/e;->e:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcn/sharesdk/sina/weibo/e;->f:[Ljava/lang/String;

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    :try_start_0
    const-string p1, "com.sina.sso.RemoteSSO$Stub"

    .line 74
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "asInterface"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 75
    const-class v3, Landroid/os/IBinder;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, v4

    .line 77
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "getPackageName"

    new-array v2, v4, [Ljava/lang/Class;

    .line 80
    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v4, [Ljava/lang/Object;

    .line 82
    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getActivityName"

    new-array v3, v4, [Ljava/lang/Class;

    .line 85
    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 86
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v4, [Ljava/lang/Object;

    .line 87
    invoke-virtual {p1, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-direct {p0, v0, p1}, Lcn/sharesdk/sina/weibo/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 91
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/e;->a:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {p1}, Lcn/sharesdk/framework/authorize/d;->finish()V

    .line 92
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {p1, p2}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 97
    iget-object p2, p0, Lcn/sharesdk/sina/weibo/e;->a:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {p2}, Lcn/sharesdk/framework/authorize/d;->finish()V

    .line 98
    iget-object p2, p0, Lcn/sharesdk/sina/weibo/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p2, :cond_0

    .line 99
    iget-object p2, p0, Lcn/sharesdk/sina/weibo/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {p2, p1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 105
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/e;->a:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {p1}, Lcn/sharesdk/framework/authorize/d;->finish()V

    .line 106
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/e;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {p1, v0}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
