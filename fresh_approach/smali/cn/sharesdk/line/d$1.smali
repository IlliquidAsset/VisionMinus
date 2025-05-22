.class Lcn/sharesdk/line/d$1;
.super Ljava/lang/Thread;
.source "LineSSOProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/line/d;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/sharesdk/line/d;


# direct methods
.method constructor <init>(Lcn/sharesdk/line/d;Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcn/sharesdk/line/d$1;->b:Lcn/sharesdk/line/d;

    iput-object p2, p0, Lcn/sharesdk/line/d$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/line/d$1;->a:Ljava/lang/String;

    const-string v3, "client_id"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "https://api.line.me/oauth2/v2.1/otp"

    .line 51
    :try_start_0
    invoke-static {}, Lcn/sharesdk/line/c;->a()Lcn/sharesdk/line/c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/sharesdk/line/c;->b()Lcn/sharesdk/framework/a/b;

    move-result-object v2

    const-string v3, "/oauth2/v2.1/otp"

    invoke-static {}, Lcn/sharesdk/line/c;->a()Lcn/sharesdk/line/c;

    move-result-object v4

    invoke-virtual {v4}, Lcn/sharesdk/line/c;->c()I

    move-result v4

    invoke-virtual {v2, v1, v0, v3, v4}, Lcn/sharesdk/framework/a/b;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "otpId"

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "otp"

    .line 55
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 57
    iget-object v2, p0, Lcn/sharesdk/line/d$1;->b:Lcn/sharesdk/line/d;

    invoke-static {v2, v1}, Lcn/sharesdk/line/d;->a(Lcn/sharesdk/line/d;Ljava/lang/String;)V

    .line 59
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    new-instance v2, Lcn/sharesdk/line/e;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "line_sp"

    invoke-direct {v2, v3, v4}, Lcn/sharesdk/line/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v3, "otp_id"

    .line 61
    invoke-virtual {v2, v3, v1}, Lcn/sharesdk/line/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "otp_password"

    .line 62
    invoke-virtual {v2, v1, v0}, Lcn/sharesdk/line/e;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
