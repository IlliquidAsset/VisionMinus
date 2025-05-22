.class Lcn/sharesdk/line/c$2;
.super Ljava/lang/Thread;
.source "LineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/line/c;->a(Lcn/sharesdk/line/LineHandlerActivity;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/sharesdk/line/c;


# direct methods
.method constructor <init>(Lcn/sharesdk/line/c;Ljava/lang/String;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcn/sharesdk/line/c$2;->b:Lcn/sharesdk/line/c;

    iput-object p2, p0, Lcn/sharesdk/line/c$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 373
    :try_start_0
    new-instance v0, Lcn/sharesdk/line/e;

    .line 374
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "line_sp"

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/line/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "otp_password"

    const/4 v2, 0x0

    .line 375
    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/line/e;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 377
    iget-object v1, p0, Lcn/sharesdk/line/c$2;->b:Lcn/sharesdk/line/c;

    iget-object v2, p0, Lcn/sharesdk/line/c$2;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcn/sharesdk/line/c;->a(Lcn/sharesdk/line/c;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
