.class public Lcn/sharesdk/facebook/b;
.super Lcn/sharesdk/framework/authorize/e;
.source "FacebookSSOProcessor.java"


# instance fields
.field private d:Ljava/lang/String;

.field private e:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/d;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/e;-><init>(Lcn/sharesdk/framework/authorize/d;)V

    return-void
.end method

.method private b()Z
    .locals 4

    .line 63
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.facebook.katana"

    const-string v2, "com.facebook.katana.ProxyAuth"

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    iget-object v1, p0, Lcn/sharesdk/facebook/b;->d:Ljava/lang/String;

    const-string v2, "client_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    iget-object v1, p0, Lcn/sharesdk/facebook/b;->e:[Ljava/lang/String;

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    const-string v2, ","

    .line 68
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scope"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    :cond_0
    invoke-direct {p0, v0}, Lcn/sharesdk/facebook/b;->b(Landroid/content/Intent;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 76
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/facebook/b;->a:Lcn/sharesdk/framework/authorize/d;

    iget v3, p0, Lcn/sharesdk/facebook/b;->b:I

    invoke-virtual {v1, v0, v3}, Lcn/sharesdk/framework/authorize/d;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    :catchall_0
    return v2
.end method

.method private b(Landroid/content/Intent;)Z
    .locals 5

    .line 86
    iget-object v0, p0, Lcn/sharesdk/facebook/b;->a:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return v1

    .line 91
    :cond_0
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 93
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/facebook/b;->a:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x40

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 95
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    const-string v4, "30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2"

    .line 96
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
    .locals 4

    .line 123
    iget-object v0, p0, Lcn/sharesdk/facebook/b;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "error_message"

    .line 127
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "error_code"

    if-nez v1, :cond_1

    .line 129
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    .line 133
    iget-object v0, p0, Lcn/sharesdk/facebook/b;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/authorize/SSOListener;->onComplete(Landroid/os/Bundle;)V

    return-void

    :cond_2
    const-string v3, "access_denied"

    .line 137
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "OAuthAccessDeniedException"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 140
    :cond_3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    :cond_4
    iget-object p1, p0, Lcn/sharesdk/facebook/b;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 138
    :cond_5
    :goto_0
    iget-object p1, p0, Lcn/sharesdk/facebook/b;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/SSOListener;->onCancel()V

    :goto_1
    return-void
.end method

.method private d(Landroid/content/Intent;)V
    .locals 3

    .line 150
    iget-object v0, p0, Lcn/sharesdk/facebook/b;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "error"

    .line 160
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error_code"

    .line 161
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "access_denied"

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "200"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    iget-object p1, p0, Lcn/sharesdk/facebook/b;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/SSOListener;->onCancel()V

    goto :goto_0

    .line 166
    :cond_1
    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 167
    iget-object p1, p0, Lcn/sharesdk/facebook/b;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {p1, v1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 170
    :cond_2
    iget-object p1, p0, Lcn/sharesdk/facebook/b;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/SSOListener;->onCancel()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lcn/sharesdk/facebook/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcn/sharesdk/facebook/b;->a:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/d;->finish()V

    .line 54
    iget-object v0, p0, Lcn/sharesdk/facebook/b;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcn/sharesdk/facebook/b;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcn/sharesdk/facebook/b;->a:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/d;->finish()V

    .line 109
    iget v0, p0, Lcn/sharesdk/facebook/b;->b:I

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    invoke-direct {p0, p3}, Lcn/sharesdk/facebook/b;->d(Landroid/content/Intent;)V

    goto :goto_0

    .line 112
    :cond_1
    invoke-direct {p0, p3}, Lcn/sharesdk/facebook/b;->c(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcn/sharesdk/facebook/b;->d:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcn/sharesdk/facebook/b;->e:[Ljava/lang/String;

    return-void
.end method
