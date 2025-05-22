.class final Lcom/mob/commons/utag/UserTager$1;
.super Ljava/lang/Object;
.source "UserTager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/utag/UserTager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 54
    invoke-static {}, Lcom/mob/commons/b;->ac()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 58
    aget-object v0, p1, v1

    check-cast v0, Ljava/util/HashMap;

    .line 59
    aget-object p1, p1, v2

    check-cast p1, Lcom/mob/commons/utag/UserTagError;

    .line 60
    invoke-static {v0, p1}, Lcom/mob/commons/utag/UserTager;->a(Ljava/util/HashMap;Lcom/mob/commons/utag/UserTagError;)V

    .line 61
    invoke-static {}, Lcom/mob/commons/utag/UserTager;->a()V

    goto :goto_0

    .line 64
    :cond_1
    invoke-static {}, Lcom/mob/commons/utag/UserTager;->b()Z

    move-result p1

    if-nez p1, :cond_2

    .line 66
    invoke-static {}, Lcom/mob/commons/utag/UserTager;->a()V

    :cond_2
    :goto_0
    return v1
.end method
