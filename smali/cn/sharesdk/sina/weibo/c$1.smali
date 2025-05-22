.class Lcn/sharesdk/sina/weibo/c$1;
.super Ljava/lang/Thread;
.source "SinaLinkCardLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/c;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/sharesdk/sina/weibo/c;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/c;I)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/c$1;->b:Lcn/sharesdk/sina/weibo/c;

    iput p2, p0, Lcn/sharesdk/sina/weibo/c$1;->a:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/c$1;->b:Lcn/sharesdk/sina/weibo/c;

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/c;->a(Lcn/sharesdk/sina/weibo/c;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appkey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "plat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget v1, p0, Lcn/sharesdk/sina/weibo/c$1;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/c$1;->b:Lcn/sharesdk/sina/weibo/c;

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/c;->b(Lcn/sharesdk/sina/weibo/c;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "shareTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 67
    :try_start_0
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/c$1;->b:Lcn/sharesdk/sina/weibo/c;

    invoke-static {v2}, Lcn/sharesdk/sina/weibo/c;->c(Lcn/sharesdk/sina/weibo/c;)Lcom/mob/MobCommunicator;

    move-result-object v2

    const-string v3, "http://lks.share.mob.com/share/shareLog"

    invoke-virtual {v2, v0, v3, v1}, Lcom/mob/MobCommunicator;->requestSynchronized(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 69
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LinkCard log up error===> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method
