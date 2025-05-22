.class public abstract Lcn/sharesdk/framework/utils/d;
.super Ljava/lang/Object;
.source "SSDKHandlerThread.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field protected final a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p0}, Lcom/mob/tools/MobHandlerThread;->newHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/utils/d;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/Object;)V
    .locals 2

    .line 24
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, -0x1

    .line 25
    iput v1, v0, Landroid/os/Message;->what:I

    .line 26
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 27
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 28
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 29
    iget-object p1, p0, Lcn/sharesdk/framework/utils/d;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method protected abstract b(Landroid/os/Message;)V
.end method

.method protected c(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v0, v0, v1}, Lcn/sharesdk/framework/utils/d;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 46
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 49
    invoke-virtual {p0, p1}, Lcn/sharesdk/framework/utils/d;->b(Landroid/os/Message;)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0, p1}, Lcn/sharesdk/framework/utils/d;->a(Landroid/os/Message;)V

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p0, p1}, Lcn/sharesdk/framework/utils/d;->c(Landroid/os/Message;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
