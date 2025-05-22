.class public Lcn/sharesdk/wechat/utils/i;
.super Ljava/lang/Object;
.source "WechatCore.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([B[B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 338
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_5

    .line 343
    array-length v1, p2

    if-nez v1, :cond_1

    goto :goto_1

    .line 348
    :cond_1
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_2

    .line 349
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    const-string v1, "checkSumConsistent fail, length is different"

    invoke-virtual {p1, v1, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v0

    :cond_2
    const/4 v1, 0x0

    .line 353
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 354
    aget-byte v2, p1, v1

    aget-byte v3, p2, v1

    if-eq v2, v3, :cond_3

    .line 355
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    const-string v1, "checkSumConsistent fail, not match"

    invoke-virtual {p1, v1, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1

    .line 344
    :cond_5
    :goto_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    const-string v1, "checkSumConsistent fail, invalid arguments, checksum is empty"

    invoke-virtual {p1, v1, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v0

    .line 339
    :cond_6
    :goto_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    const-string v1, "checkSumConsistent fail, invalid arguments, \"_mmessage_checksum\" is empty"

    invoke-virtual {p1, v1, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)[B
    .locals 5

    .line 210
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_0

    .line 212
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    :cond_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 215
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "mMcShCsTr"

    .line 216
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x9

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/16 p2, 0x10

    new-array p2, p2, [C

    .line 220
    fill-array-data p2, :array_0

    const/4 p3, 0x0

    :try_start_0
    const-string v0, "MD5"

    .line 222
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 223
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 224
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 225
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 227
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 228
    aget-byte v3, p1, v1

    ushr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    .line 229
    aget-char v4, p2, v4

    aput-char v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    and-int/lit8 v3, v3, 0xf

    .line 231
    aget-char v3, p2, v3

    aput-char v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 236
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move-object p1, p3

    :goto_1
    if-eqz p1, :cond_2

    .line 240
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1

    :cond_2
    return-object p3

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "content://com.tencent.mm.sdk.plugin.provider/sharedpref"

    .line 246
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v0, "_id"

    const-string v1, "key"

    const-string v3, "type"

    const-string v7, "value"

    .line 247
    filled-new-array {v0, v1, v3, v7}, [Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    .line 250
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "key = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    .line 251
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 257
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 260
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p1

    .line 263
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private d()Z
    .locals 6

    .line 160
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "checking signature of wechat client..."

    invoke-virtual {v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 163
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.tencent.mm"

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 172
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "308202eb30820254a00302010202044d36f7a4300d06092a864886f70d01010505003081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e74301e170d3131303131393134333933325a170d3431303131313134333933325a3081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e7430819f300d06092a864886f70d010101050003818d0030818902818100c05f34b231b083fb1323670bfbe7bdab40c0c0a6efc87ef2072a1ff0d60cc67c8edb0d0847f210bea6cbfaa241be70c86daf56be08b723c859e52428a064555d80db448cdcacc1aea2501eba06f8bad12a4fa49d85cacd7abeb68945a5cb5e061629b52e3254c373550ee4e40cb7c8ae6f7a8151ccd8df582d446f39ae0c5e930203010001300d06092a864886f70d0101050500038181009c8d9d7f2f908c42081b4c764c377109a8b2c70582422125ce545842d5f520aea69550b6bd8bfd94e987b75a3077eb04ad341f481aac266e89d3864456e69fba13df018acdc168b9a19dfd7ad9d9cc6f6ace57c746515f71234df3a053e33ba93ece5cd0fc15f3e389a3f365588a9fcb439e069d3629cd7732a13fff7b891499"

    .line 201
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 202
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "pass!"

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1

    :catchall_0
    move-exception v0

    .line 166
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return v1
.end method


# virtual methods
.method public a(Lcn/sharesdk/wechat/utils/l;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 90
    check-cast p1, Lcn/sharesdk/wechat/utils/h$a;

    .line 91
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "content://com.tencent.mm.sdk.comm.provider/launchWXMiniprogram"

    .line 92
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/i;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v5, v3

    iget-object v0, p1, Lcn/sharesdk/wechat/utils/h$a;->a:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v0, v5, v3

    iget-object v0, p1, Lcn/sharesdk/wechat/utils/h$a;->b:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v0, v5, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcn/sharesdk/wechat/utils/h$a;->c:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    aput-object p1, v5, v0

    const/4 p1, 0x0

    .line 94
    move-object v3, p1

    check-cast v3, [Ljava/lang/String;

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    move-object v4, v6

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 96
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.tencent.mm"

    const-string v1, "com.tencent.mm.plugin.base.stub.WXEntryActivity"

    .line 99
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 100
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x8000000

    .line 101
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 102
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Lcn/sharesdk/wechat/utils/l;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcn/sharesdk/wechat/utils/i;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p1, p2}, Lcn/sharesdk/wechat/utils/l;->a(Z)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x25040300

    .line 68
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "weixin://sendreq?appid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/sharesdk/wechat/utils/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.tencent.mm"

    const-string v4, "com.tencent.mm.plugin.base.stub.WXEntryActivity"

    .line 72
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 74
    invoke-virtual {p1, v3}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p1, "_mmessage_sdkVersion"

    .line 78
    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "_mmessage_appPackage"

    .line 79
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "_mmessage_content"

    .line 80
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    invoke-direct {p0, v1, v0, p2}, Lcn/sharesdk/wechat/utils/i;->a(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object p1

    const-string p2, "_mmessage_checksum"

    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 82
    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x8000000

    .line 83
    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 86
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "starting activity, packageName=com.tencent.mm, className=com.tencent.mm.plugin.base.stub.WXEntryActivity"

    invoke-virtual {p1, v0, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "sendReq checkArgs fail"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_1
    new-instance p1, Lcn/sharesdk/wechat/utils/WechatClientNotExistException;

    invoke-direct {p1}, Lcn/sharesdk/wechat/utils/WechatClientNotExistException;-><init>()V

    throw p1
.end method

.method public a()Z
    .locals 7

    const/4 v0, 0x0

    .line 109
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.tencent.mm"

    .line 110
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 111
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 112
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wechat versionName ==>> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 114
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const-string v1, "0"

    :goto_0
    const-string v2, "_"

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    const-string v2, "\\."

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 120
    array-length v2, v1

    new-array v3, v2, [I

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_0

    .line 123
    :try_start_1
    aget-object v5, v1, v4

    invoke-static {v5}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v5

    .line 125
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 126
    aput v0, v3, v4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    if-lt v2, v1, :cond_1

    .line 132
    aget v1, v3, v0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    aget v2, v3, v1

    if-nez v2, :cond_1

    const/4 v2, 0x2

    aget v4, v3, v2

    if-ne v4, v2, :cond_1

    const/4 v2, 0x3

    aget v2, v3, v2

    const/16 v3, 0x38

    if-gt v2, v3, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public a(Lcn/sharesdk/wechat/utils/WechatHandlerActivity;Lcn/sharesdk/wechat/utils/j;)Z
    .locals 6

    .line 281
    invoke-virtual {p1}, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "wx_token_key"

    .line 286
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string v3, "com.tencent.mm.openapi.token"

    .line 287
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v2, "_mmessage_appPackage"

    .line 293
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 295
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "invalid argument, \"_mmessage_appPackage\" is empty"

    invoke-virtual {p1, v0, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1

    :cond_2
    const-string v3, "_mmessage_content"

    .line 299
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_mmessage_sdkVersion"

    .line 300
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "_mmessage_checksum"

    .line 301
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    .line 302
    invoke-direct {p0, v3, v2, v4}, Lcn/sharesdk/wechat/utils/i;->a(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v2

    .line 303
    invoke-direct {p0, v5, v2}, Lcn/sharesdk/wechat/utils/i;->a([B[B)Z

    move-result v2

    if-nez v2, :cond_3

    .line 304
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "checksum fail"

    invoke-virtual {p1, v0, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1

    .line 308
    :cond_3
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "_wxapi_command_type"

    .line 310
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    const/4 v4, 0x2

    if-eq v2, v4, :cond_7

    const/4 p2, 0x3

    if-eq v2, p2, :cond_6

    const/4 p2, 0x4

    if-eq v2, p2, :cond_5

    const/16 p2, 0x13

    if-eq v2, p2, :cond_4

    return v1

    .line 327
    :cond_4
    new-instance p2, Lcn/sharesdk/wechat/utils/c;

    invoke-direct {p2, v0}, Lcn/sharesdk/wechat/utils/c;-><init>(Landroid/os/Bundle;)V

    .line 328
    iget-object p2, p2, Lcn/sharesdk/wechat/utils/c;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-virtual {p1, p2}, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;->onGetMessageFromWXReq(Lcn/sharesdk/wechat/utils/WXMediaMessage;)V

    goto :goto_0

    .line 323
    :cond_5
    new-instance p2, Lcn/sharesdk/wechat/utils/f;

    invoke-direct {p2, v0}, Lcn/sharesdk/wechat/utils/f;-><init>(Landroid/os/Bundle;)V

    .line 324
    iget-object p2, p2, Lcn/sharesdk/wechat/utils/f;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-virtual {p1, p2}, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;->onShowMessageFromWXReq(Lcn/sharesdk/wechat/utils/WXMediaMessage;)V

    goto :goto_0

    .line 319
    :cond_6
    new-instance p2, Lcn/sharesdk/wechat/utils/c;

    invoke-direct {p2, v0}, Lcn/sharesdk/wechat/utils/c;-><init>(Landroid/os/Bundle;)V

    .line 320
    iget-object p2, p2, Lcn/sharesdk/wechat/utils/c;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-virtual {p1, p2}, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;->onGetMessageFromWXReq(Lcn/sharesdk/wechat/utils/WXMediaMessage;)V

    goto :goto_0

    .line 316
    :cond_7
    new-instance p1, Lcn/sharesdk/wechat/utils/e;

    invoke-direct {p1, v0}, Lcn/sharesdk/wechat/utils/e;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, p1}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WechatResp;)V

    goto :goto_0

    .line 313
    :cond_8
    new-instance p1, Lcn/sharesdk/wechat/utils/b;

    invoke-direct {p1, v0}, Lcn/sharesdk/wechat/utils/b;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, p1}, Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/WechatResp;)V

    :goto_0
    return v3

    .line 288
    :cond_9
    :goto_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "invalid argument, \"wx_token_key\" is empty or does not equals \"com.tencent.mm.openapi.token\""

    invoke-virtual {p1, v0, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 7

    .line 26
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/i;->a:Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Lcn/sharesdk/wechat/utils/i;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 28
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "register app failed for wechat app signature check failed"

    invoke-virtual {p1, v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1

    :cond_0
    const-string v0, "com.tencent.mm.plugin.openapi.Intent.ACTION_HANDLE_APP_REGISTER"

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "weixin://registerapp?appid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.tencent.mm.permission.MM_MESSAGE"

    .line 35
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x25040300

    .line 43
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "_mmessage_sdkVersion"

    .line 44
    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "_mmessage_appPackage"

    .line 45
    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "_mmessage_content"

    .line 46
    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    invoke-direct {p0, p1, v3, v4}, Lcn/sharesdk/wechat/utils/i;->a(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object p1

    const-string v3, "_mmessage_checksum"

    invoke-virtual {v5, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 48
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sending broadcast, intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", perm="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 p1, 0x1

    return p1
.end method

.method public b()Z
    .locals 1

    .line 140
    invoke-direct {p0}, Lcn/sharesdk/wechat/utils/i;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 2

    const-string v0, "_build_info_sdk_int_"

    .line 269
    invoke-direct {p0, v0}, Lcn/sharesdk/wechat/utils/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    :try_start_0
    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 274
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    :goto_0
    const v1, 0x21020001

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
