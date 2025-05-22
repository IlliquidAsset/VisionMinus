.class Lcn/sharesdk/loopshare/utils/e$b;
.super Lcn/sharesdk/loopshare/utils/AsyncProtocol$a;
.source "MobLinkImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/loopshare/utils/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/sharesdk/loopshare/utils/AsyncProtocol$a<",
        "Lcn/sharesdk/loopshare/beans/ConfigData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/loopshare/utils/e;

.field private b:Lcn/sharesdk/loopshare/utils/c;


# direct methods
.method private constructor <init>(Lcn/sharesdk/loopshare/utils/e;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcn/sharesdk/loopshare/utils/e$b;->a:Lcn/sharesdk/loopshare/utils/e;

    invoke-direct {p0}, Lcn/sharesdk/loopshare/utils/AsyncProtocol$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/sharesdk/loopshare/utils/e;Lcn/sharesdk/loopshare/utils/e$1;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcn/sharesdk/loopshare/utils/e$b;-><init>(Lcn/sharesdk/loopshare/utils/e;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/loopshare/utils/e$b;Lcn/sharesdk/loopshare/utils/c;)Lcn/sharesdk/loopshare/utils/c;
    .locals 0

    .line 72
    iput-object p1, p0, Lcn/sharesdk/loopshare/utils/e$b;->b:Lcn/sharesdk/loopshare/utils/c;

    return-object p1
.end method


# virtual methods
.method public a(Lcn/sharesdk/loopshare/beans/ConfigData;)V
    .locals 6

    .line 77
    invoke-super {p0, p1}, Lcn/sharesdk/loopshare/utils/AsyncProtocol$a;->onReceiveData(Ljava/lang/Object;)V

    .line 78
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config onReceiveData\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "[MOBLINK]%s"

    invoke-virtual {v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 79
    invoke-static {p1}, Lcn/sharesdk/loopshare/beans/ServerData;->a(Lcn/sharesdk/loopshare/beans/ServerData;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/e$b;->b:Lcn/sharesdk/loopshare/utils/c;

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "config onReceiveData resume"

    aput-object v1, v0, v4

    invoke-virtual {p1, v3, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 81
    iget-object p1, p0, Lcn/sharesdk/loopshare/utils/e$b;->a:Lcn/sharesdk/loopshare/utils/e;

    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/e$b;->b:Lcn/sharesdk/loopshare/utils/c;

    invoke-virtual {v0}, Lcn/sharesdk/loopshare/utils/c;->b()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/loopshare/utils/e$b;->b:Lcn/sharesdk/loopshare/utils/c;

    invoke-virtual {v1}, Lcn/sharesdk/loopshare/utils/c;->a()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/loopshare/utils/e$b;->b:Lcn/sharesdk/loopshare/utils/c;

    .line 82
    invoke-virtual {v2}, Lcn/sharesdk/loopshare/utils/c;->c()Z

    move-result v2

    .line 81
    invoke-static {p1, v0, v1, v2}, Lcn/sharesdk/loopshare/utils/e;->a(Lcn/sharesdk/loopshare/utils/e;Landroid/content/Intent;Landroid/app/Activity;Z)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "config endRestoreScene\uff1a"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {v0, v3, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 85
    iget-object p1, p0, Lcn/sharesdk/loopshare/utils/e$b;->a:Lcn/sharesdk/loopshare/utils/e;

    invoke-static {p1}, Lcn/sharesdk/loopshare/utils/e;->a(Lcn/sharesdk/loopshare/utils/e;)V

    :goto_0
    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lcn/sharesdk/loopshare/utils/e$b;->b:Lcn/sharesdk/loopshare/utils/c;

    return-void
.end method

.method public synthetic onReceiveData(Ljava/lang/Object;)V
    .locals 0

    .line 72
    check-cast p1, Lcn/sharesdk/loopshare/beans/ConfigData;

    invoke-virtual {p0, p1}, Lcn/sharesdk/loopshare/utils/e$b;->a(Lcn/sharesdk/loopshare/beans/ConfigData;)V

    return-void
.end method
