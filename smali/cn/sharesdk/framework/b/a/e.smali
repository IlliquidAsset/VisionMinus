.class public Lcn/sharesdk/framework/b/a/e;
.super Ljava/lang/Object;
.source "SharePrefrenceUtil.java"


# static fields
.field private static b:Lcn/sharesdk/framework/b/a/e;


# instance fields
.field private a:Lcom/mob/tools/utils/SharePrefrenceHelper;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "share_sdk"

    const/4 v2, 0x1

    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->open(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()Lcn/sharesdk/framework/b/a/e;
    .locals 1

    .line 70
    sget-object v0, Lcn/sharesdk/framework/b/a/e;->b:Lcn/sharesdk/framework/b/a/e;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcn/sharesdk/framework/b/a/e;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/a/e;-><init>()V

    sput-object v0, Lcn/sharesdk/framework/b/a/e;->b:Lcn/sharesdk/framework/b/a/e;

    .line 73
    :cond_0
    sget-object v0, Lcn/sharesdk/framework/b/a/e;->b:Lcn/sharesdk/framework/b/a/e;

    return-object v0
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "device_time"

    invoke-virtual {v0, p2, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "trans_short_link"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .line 257
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    .line 249
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 265
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 196
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "connect_server"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public b()J
    .locals 2

    .line 77
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "service_time"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(J)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "connect_server_time"

    invoke-virtual {v0, p2, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "upload_device_info"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 225
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "sns_info_buffered"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 141
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "upload_user_info"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()Z
    .locals 2

    .line 81
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "upload_device_info"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 85
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "upload_share_content"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()Z
    .locals 2

    .line 89
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "upload_user_info"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 93
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "open_login_plus"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e()Z
    .locals 2

    .line 97
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "trans_short_link"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 101
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public f()I
    .locals 2

    .line 106
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "upload_share_content"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v1, "false"

    .line 109
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "open_sina_link_card"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 3

    .line 157
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffered_snsconf_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g()Z
    .locals 2

    .line 117
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "open_login_plus"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 121
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public h(Ljava/lang/String;)J
    .locals 2

    .line 253
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public h()Z
    .locals 2

    .line 125
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "open_sina_link_card"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 129
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public i(Ljava/lang/String;)I
    .locals 1

    .line 261
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public i()Ljava/lang/String;
    .locals 3

    .line 161
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffered_snsconf_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/Long;
    .locals 2

    .line 191
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "device_time"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 269
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public k()Z
    .locals 2

    .line 201
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "connect_server"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public l()Ljava/lang/Long;
    .locals 2

    .line 211
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "connect_server_time"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public m()Z
    .locals 2

    .line 229
    iget-object v0, p0, Lcn/sharesdk/framework/b/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "sns_info_buffered"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
