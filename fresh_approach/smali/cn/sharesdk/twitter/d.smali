.class public Lcn/sharesdk/twitter/d;
.super Lcn/sharesdk/framework/authorize/e;
.source "TwitterSSOProcessor.java"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcn/sharesdk/framework/authorize/d;


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/d;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/e;-><init>(Lcn/sharesdk/framework/authorize/d;)V

    .line 85
    iput-object p1, p0, Lcn/sharesdk/twitter/d;->f:Lcn/sharesdk/framework/authorize/d;

    return-void
.end method

.method public static a(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.twitter.android"

    const-string v1, "3082025d308201c6a00302010202044bd76cce300d06092a864886f70d01010505003073310b3009060355040613025553310b3009060355040813024341311630140603550407130d53616e204672616e636973636f31163014060355040a130d547769747465722c20496e632e310f300d060355040b13064d6f62696c65311630140603550403130d4c656c616e6420526563686973301e170d3130303432373233303133345a170d3438303832353233303133345a3073310b3009060355040613025553310b3009060355040813024341311630140603550407130d53616e204672616e636973636f31163014060355040a130d547769747465722c20496e632e310f300d060355040b13064d6f62696c65311630140603550403130d4c656c616e642052656368697330819f300d06092a864886f70d010101050003818d003081890281810086233c2e51c62232d49cc932e470713d63a6a1106b38f9e442e01bc79ca4f95c72b2cb3f1369ef7dea6036bff7c4b2828cb3787e7657ad83986751ced5b131fcc6f413efb7334e32ed9787f9e9a249ae108fa66009ac7a7932c25d37e1e07d4f9f66aa494c270dbac87d261c9668d321c2fba4ef2800e46671a597ff2eac5d7f0203010001300d06092a864886f70d0101050500038181003e1f01cb6ea8be8d2cecef5cd2a64c97ba8728aa5f08f8275d00508d64d139b6a72c5716b40a040df0eeeda04de9361107e123ee8d3dc05e70c8a355f46dbadf1235443b0b214c57211afd4edd147451c443d49498d2a7ff27e45a99c39b9e47429a1dae843ba233bf8ca81296dbe1dc5c5434514d995b0279246809392a219b"

    .line 241
    invoke-static {p0, v0, v1}, Lcn/sharesdk/twitter/d;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "com.twitter.android.beta"

    const-string v1, "308203523082023aa00302010202044fd0006b300d06092a864886f70d0101050500306b310b3009060355040613025553310b3009060355040813024341311630140603550407130d53616e204672616e636973636f3110300e060355040a130754776974746572310f300d060355040b13064d6f62696c65311430120603550403130b4a6f6e617468616e204c65301e170d3132303630373031313431395a170d3339313032343031313431395a306b310b3009060355040613025553310b3009060355040813024341311630140603550407130d53616e204672616e636973636f3110300e060355040a130754776974746572310f300d060355040b13064d6f62696c65311430120603550403130b4a6f6e617468616e204c6530820122300d06092a864886f70d01010105000382010f003082010a028201010089e6cbdfed4288a9c0a215d33d4fa978a5bdd20be426ef4b497d358a9fd1c6efec9684f059f6955e60e5fda1b5910bb2d097e7421a78f9c81e95cd8ef3bf50add7f8d9f073c0478736a6c7fd38c5871559783a76420d37f3f874f2114ec02532e85587791d24037485b1b95ec8cbc75b52042867988b51c7c3589d5b5972fd20a2e8a7c9ced986873f5008a418b2921daa7cfb78afc174eecdb8a79dc0961bea9740d09c4656ac9b8c86263a788e35af1d4a3f86ce053a1aefb5369def91614a390219f896f378712376baa05934a341798950e229f4f735b86004952b259f23cc9fc3b8c1bc8171984884dc92940e91f2e9a78a84a78f0c2946b7e37bbf3b9b0203010001300d06092a864886f70d010105050003820101001cf15250365e66cc87bb5054de1661266cf87907841016b20dfa1f9f59842020cbc33f9b4d41717db0428d11696a0bade6a4950a48cc4fa8ae56c850647379a5c2d977436b644162c453dd36b7745ccb9ff0b5fc070125024de73dab6dcda5c69372e978a49865f569927199ed0f61d7cbee1839079a7da2e83f8c90f7421a8c81b3f17f1cc05d52aedac9acd6e092ffd9ad572960e779a5b91a78e1aeb2b3c7b24464bd223c745e40abd74fc586310809520d183443fcca3c6ade3be458afedbd3325df9c0e552636e35bb55b240eb8c0ba3973c4fb81213f22363be2d70e85014650c2f4fc679747a7ec31ea7b08da7dd9b9ba279a7fbbc1bd440fbe831bf4"

    .line 243
    invoke-static {p0, v0, v1}, Lcn/sharesdk/twitter/d;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 2

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.twitter.android"

    const-string v1, "3082025d308201c6a00302010202044bd76cce300d06092a864886f70d01010505003073310b3009060355040613025553310b3009060355040813024341311630140603550407130d53616e204672616e636973636f31163014060355040a130d547769747465722c20496e632e310f300d060355040b13064d6f62696c65311630140603550403130d4c656c616e6420526563686973301e170d3130303432373233303133345a170d3438303832353233303133345a3073310b3009060355040613025553310b3009060355040813024341311630140603550407130d53616e204672616e636973636f31163014060355040a130d547769747465722c20496e632e310f300d060355040b13064d6f62696c65311630140603550403130d4c656c616e642052656368697330819f300d06092a864886f70d010101050003818d003081890281810086233c2e51c62232d49cc932e470713d63a6a1106b38f9e442e01bc79ca4f95c72b2cb3f1369ef7dea6036bff7c4b2828cb3787e7657ad83986751ced5b131fcc6f413efb7334e32ed9787f9e9a249ae108fa66009ac7a7932c25d37e1e07d4f9f66aa494c270dbac87d261c9668d321c2fba4ef2800e46671a597ff2eac5d7f0203010001300d06092a864886f70d0101050500038181003e1f01cb6ea8be8d2cecef5cd2a64c97ba8728aa5f08f8275d00508d64d139b6a72c5716b40a040df0eeeda04de9361107e123ee8d3dc05e70c8a355f46dbadf1235443b0b214c57211afd4edd147451c443d49498d2a7ff27e45a99c39b9e47429a1dae843ba233bf8ca81296dbe1dc5c5434514d995b0279246809392a219b"

    .line 236
    invoke-static {p0, v0, v1}, Lcn/sharesdk/twitter/d;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.twitter.android.beta"

    const-string v1, "308203523082023aa00302010202044fd0006b300d06092a864886f70d0101050500306b310b3009060355040613025553310b3009060355040813024341311630140603550407130d53616e204672616e636973636f3110300e060355040a130754776974746572310f300d060355040b13064d6f62696c65311430120603550403130b4a6f6e617468616e204c65301e170d3132303630373031313431395a170d3339313032343031313431395a306b310b3009060355040613025553310b3009060355040813024341311630140603550407130d53616e204672616e636973636f3110300e060355040a130754776974746572310f300d060355040b13064d6f62696c65311430120603550403130b4a6f6e617468616e204c6530820122300d06092a864886f70d01010105000382010f003082010a028201010089e6cbdfed4288a9c0a215d33d4fa978a5bdd20be426ef4b497d358a9fd1c6efec9684f059f6955e60e5fda1b5910bb2d097e7421a78f9c81e95cd8ef3bf50add7f8d9f073c0478736a6c7fd38c5871559783a76420d37f3f874f2114ec02532e85587791d24037485b1b95ec8cbc75b52042867988b51c7c3589d5b5972fd20a2e8a7c9ced986873f5008a418b2921daa7cfb78afc174eecdb8a79dc0961bea9740d09c4656ac9b8c86263a788e35af1d4a3f86ce053a1aefb5369def91614a390219f896f378712376baa05934a341798950e229f4f735b86004952b259f23cc9fc3b8c1bc8171984884dc92940e91f2e9a78a84a78f0c2946b7e37bbf3b9b0203010001300d06092a864886f70d010105050003820101001cf15250365e66cc87bb5054de1661266cf87907841016b20dfa1f9f59842020cbc33f9b4d41717db0428d11696a0bade6a4950a48cc4fa8ae56c850647379a5c2d977436b644162c453dd36b7745ccb9ff0b5fc070125024de73dab6dcda5c69372e978a49865f569927199ed0f61d7cbee1839079a7da2e83f8c90f7421a8c81b3f17f1cc05d52aedac9acd6e092ffd9ad572960e779a5b91a78e1aeb2b3c7b24464bd223c745e40abd74fc586310809520d183443fcca3c6ade3be458afedbd3325df9c0e552636e35bb55b240eb8c0ba3973c4fb81213f22363be2d70e85014650c2f4fc679747a7ec31ea7b08da7dd9b9ba279a7fbbc1bd440fbe831bf4"

    .line 237
    invoke-static {p0, v0, v1}, Lcn/sharesdk/twitter/d;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/16 v0, 0x40

    const/4 v1, 0x0

    .line 254
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v2, p0, v0

    .line 259
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    return v1
.end method

.method private b()V
    .locals 4

    .line 120
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/twitter/d;->f:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 121
    invoke-static {v0}, Lcn/sharesdk/twitter/d;->a(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    .line 125
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.twitter.android.SingleSignOnActivity"

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcn/sharesdk/twitter/d;->f:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/sharesdk/twitter/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    const-string v1, "ck"

    .line 130
    iget-object v2, p0, Lcn/sharesdk/twitter/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "cs"

    iget-object v3, p0, Lcn/sharesdk/twitter/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    iget-object v1, p0, Lcn/sharesdk/twitter/d;->f:Lcn/sharesdk/framework/authorize/d;

    const/16 v2, 0x8c

    invoke-virtual {v1, v0, v2}, Lcn/sharesdk/framework/authorize/d;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcn/sharesdk/twitter/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "error"

    .line 183
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Lcn/sharesdk/twitter/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/authorize/SSOListener;->onComplete(Landroid/os/Bundle;)V

    return-void

    :cond_1
    const-string v1, "access_denied"

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 191
    iget-object p1, p0, Lcn/sharesdk/twitter/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p1, :cond_4

    .line 192
    iget-object p1, p0, Lcn/sharesdk/twitter/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/SSOListener;->onCancel()V

    goto :goto_0

    :cond_2
    const-string v1, "error_description"

    .line 195
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    :cond_3
    iget-object p1, p0, Lcn/sharesdk/twitter/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p1, :cond_4

    .line 200
    iget-object p1, p0, Lcn/sharesdk/twitter/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private c(Landroid/content/Intent;)V
    .locals 3

    .line 206
    iget-object v0, p0, Lcn/sharesdk/twitter/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "error"

    .line 212
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "error_code"

    .line 213
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 214
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

    .line 215
    iget-object p1, p0, Lcn/sharesdk/twitter/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p1, :cond_2

    .line 216
    iget-object p1, p0, Lcn/sharesdk/twitter/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {p1, v1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 220
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcn/sharesdk/twitter/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/SSOListener;->onCancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 222
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 99
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/twitter/d;->f:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/sharesdk/twitter/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcn/sharesdk/twitter/d;->b()V

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/twitter/d;->f:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/d;->finish()V

    .line 105
    iget-object v0, p0, Lcn/sharesdk/twitter/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcn/sharesdk/twitter/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, " You may not have installed Twitter client "

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 110
    iget-object v1, p0, Lcn/sharesdk/twitter/d;->f:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/d;->finish()V

    .line 111
    iget-object v1, p0, Lcn/sharesdk/twitter/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v1, :cond_2

    .line 112
    iget-object v1, p0, Lcn/sharesdk/twitter/d;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    .line 139
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/twitter/d;->f:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/d;->finish()V

    const/16 v0, 0x8c

    if-ne p1, v0, :cond_4

    const/4 p1, -0x1

    if-eq p2, p1, :cond_2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    iget-object p1, p0, Lcn/sharesdk/twitter/d;->f:Lcn/sharesdk/framework/authorize/d;

    if-eqz p1, :cond_1

    .line 150
    iget-object p1, p0, Lcn/sharesdk/twitter/d;->f:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {p1}, Lcn/sharesdk/framework/authorize/d;->finish()V

    .line 152
    :cond_1
    invoke-direct {p0, p3}, Lcn/sharesdk/twitter/d;->c(Landroid/content/Intent;)V

    goto :goto_0

    .line 143
    :cond_2
    iget-object p1, p0, Lcn/sharesdk/twitter/d;->f:Lcn/sharesdk/framework/authorize/d;

    if-eqz p1, :cond_3

    .line 144
    iget-object p1, p0, Lcn/sharesdk/twitter/d;->f:Lcn/sharesdk/framework/authorize/d;

    invoke-virtual {p1}, Lcn/sharesdk/framework/authorize/d;->finish()V

    .line 146
    :cond_3
    invoke-direct {p0, p3}, Lcn/sharesdk/twitter/d;->b(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 157
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcn/sharesdk/twitter/d;->d:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcn/sharesdk/twitter/d;->e:Ljava/lang/String;

    return-void
.end method
