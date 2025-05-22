.class Lcn/sharesdk/tencent/qzone/b$3;
.super Lcom/mob/tools/RxMob$Subscriber;
.source "QZoneHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/qzone/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/tencent/qzone/b;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qzone/b;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/b$3;->a:Lcn/sharesdk/tencent/qzone/b;

    invoke-direct {p0}, Lcom/mob/tools/RxMob$Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .line 195
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b$3;->a:Lcn/sharesdk/tencent/qzone/b;

    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/b;->c(Lcn/sharesdk/tencent/qzone/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b$3;->a:Lcn/sharesdk/tencent/qzone/b;

    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/b;->c(Lcn/sharesdk/tencent/qzone/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 196
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b$3;->a:Lcn/sharesdk/tencent/qzone/b;

    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/b;->c(Lcn/sharesdk/tencent/qzone/b;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "callback( "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/sharesdk/tencent/qzone/b;->a(Lcn/sharesdk/tencent/qzone/b;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b$3;->a:Lcn/sharesdk/tencent/qzone/b;

    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/b;->c(Lcn/sharesdk/tencent/qzone/b;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " );"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/sharesdk/tencent/qzone/b;->a(Lcn/sharesdk/tencent/qzone/b;Ljava/lang/String;)Ljava/lang/String;

    .line 198
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/b$3;->a:Lcn/sharesdk/tencent/qzone/b;

    invoke-static {v1}, Lcn/sharesdk/tencent/qzone/b;->c(Lcn/sharesdk/tencent/qzone/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "unionid"

    .line 199
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 201
    iget-object v2, p0, Lcn/sharesdk/tencent/qzone/b$3;->a:Lcn/sharesdk/tencent/qzone/b;

    invoke-static {v2}, Lcn/sharesdk/tencent/qzone/b;->d(Lcn/sharesdk/tencent/qzone/b;)Lcn/sharesdk/framework/Platform;

    move-result-object v2

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b$3;->a:Lcn/sharesdk/tencent/qzone/b;

    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/b;->e(Lcn/sharesdk/tencent/qzone/b;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 209
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/b$3;->a:Lcn/sharesdk/tencent/qzone/b;

    invoke-static {p1}, Lcn/sharesdk/tencent/qzone/b;->f(Lcn/sharesdk/tencent/qzone/b;)Lcn/sharesdk/framework/Platform;

    move-result-object p1

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    const-string v0, "unionid"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "qq auth, get unionId fail"

    invoke-virtual {p1, v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void
.end method
