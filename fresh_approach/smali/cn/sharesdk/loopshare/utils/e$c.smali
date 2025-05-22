.class Lcn/sharesdk/loopshare/utils/e$c;
.super Lcn/sharesdk/loopshare/utils/AsyncProtocol$a;
.source "MobLinkImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/loopshare/utils/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/sharesdk/loopshare/utils/AsyncProtocol$a<",
        "Lcn/sharesdk/loopshare/beans/SceneData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/loopshare/utils/e;

.field private b:Lcn/sharesdk/loopshare/utils/c;

.field private c:I


# direct methods
.method private constructor <init>(Lcn/sharesdk/loopshare/utils/e;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcn/sharesdk/loopshare/utils/e$c;->a:Lcn/sharesdk/loopshare/utils/e;

    invoke-direct {p0}, Lcn/sharesdk/loopshare/utils/AsyncProtocol$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/sharesdk/loopshare/utils/e;Lcn/sharesdk/loopshare/utils/e$1;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcn/sharesdk/loopshare/utils/e$c;-><init>(Lcn/sharesdk/loopshare/utils/e;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/loopshare/utils/e$c;Lcn/sharesdk/loopshare/utils/c;)Lcn/sharesdk/loopshare/utils/c;
    .locals 0

    .line 91
    iput-object p1, p0, Lcn/sharesdk/loopshare/utils/e$c;->b:Lcn/sharesdk/loopshare/utils/c;

    return-object p1
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcn/sharesdk/loopshare/utils/e$c;->c:I

    return-void
.end method

.method public a(Lcn/sharesdk/loopshare/beans/SceneData;)V
    .locals 5

    .line 101
    invoke-super {p0, p1}, Lcn/sharesdk/loopshare/utils/AsyncProtocol$a;->onReceiveData(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "[MOBLINK]%s"

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p1}, Lcn/sharesdk/loopshare/beans/SceneData;->a_()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/sharesdk/loopshare/utils/e$c;->b:Lcn/sharesdk/loopshare/utils/c;

    if-eqz v3, :cond_0

    .line 103
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "Server scene data is valid, start restoring!"

    aput-object v4, v1, v0

    invoke-virtual {v3, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 104
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/e$c;->a:Lcn/sharesdk/loopshare/utils/e;

    iget-object v1, p0, Lcn/sharesdk/loopshare/utils/e$c;->b:Lcn/sharesdk/loopshare/utils/c;

    invoke-virtual {v1}, Lcn/sharesdk/loopshare/utils/c;->b()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/loopshare/utils/e$c;->b:Lcn/sharesdk/loopshare/utils/c;

    invoke-virtual {v2}, Lcn/sharesdk/loopshare/utils/c;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p1}, Lcn/sharesdk/loopshare/beans/SceneData;->a()Lcn/sharesdk/loopshare/beans/SceneData$Res;

    move-result-object p1

    iget v3, p0, Lcn/sharesdk/loopshare/utils/e$c;->c:I

    invoke-static {v0, v1, v2, p1, v3}, Lcn/sharesdk/loopshare/utils/e;->a(Lcn/sharesdk/loopshare/utils/e;Landroid/content/Intent;Landroid/app/Activity;Lcn/sharesdk/loopshare/beans/SceneData$Res;I)V

    goto :goto_1

    .line 106
    :cond_0
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "Server scene data is invalid, terminate!"

    aput-object v4, v1, v0

    invoke-virtual {v3, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 111
    iget v0, p0, Lcn/sharesdk/loopshare/utils/e$c;->c:I

    const/4 v1, 0x2

    const-string v2, ""

    const/4 v3, 0x3

    if-ne v0, v1, :cond_1

    .line 112
    invoke-static {v2, v0, v3}, Lcn/sharesdk/loopshare/utils/AsyncProtocol;->a(Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    if-eqz p1, :cond_2

    .line 113
    invoke-virtual {p1}, Lcn/sharesdk/loopshare/beans/SceneData;->a_()Z

    move-result p1

    if-nez p1, :cond_2

    .line 114
    iget p1, p0, Lcn/sharesdk/loopshare/utils/e$c;->c:I

    invoke-static {v2, p1, v3}, Lcn/sharesdk/loopshare/utils/AsyncProtocol;->a(Ljava/lang/String;II)V

    .line 116
    :cond_2
    :goto_0
    iget-object p1, p0, Lcn/sharesdk/loopshare/utils/e$c;->a:Lcn/sharesdk/loopshare/utils/e;

    invoke-static {p1}, Lcn/sharesdk/loopshare/utils/e;->a(Lcn/sharesdk/loopshare/utils/e;)V

    :goto_1
    const/4 p1, 0x0

    .line 118
    iput-object p1, p0, Lcn/sharesdk/loopshare/utils/e$c;->b:Lcn/sharesdk/loopshare/utils/c;

    return-void
.end method

.method public synthetic onReceiveData(Ljava/lang/Object;)V
    .locals 0

    .line 91
    check-cast p1, Lcn/sharesdk/loopshare/beans/SceneData;

    invoke-virtual {p0, p1}, Lcn/sharesdk/loopshare/utils/e$c;->a(Lcn/sharesdk/loopshare/beans/SceneData;)V

    return-void
.end method
