.class public abstract Lcom/mob/tools/SSDKHandlerThread;
.super Ljava/lang/Object;
.source "SSDKHandlerThread.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_START:I = -0x1

.field private static final MSG_STOP:I = -0x2


# instance fields
.field protected final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "s"

    .line 15
    invoke-static {v0, p0}, Lcom/mob/tools/MobHandlerThread;->newHandler(Ljava/lang/String;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/SSDKHandlerThread;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 45
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lcom/mob/tools/SSDKHandlerThread;->onMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mob/tools/SSDKHandlerThread;->onStart(Landroid/os/Message;)V

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mob/tools/SSDKHandlerThread;->onStop(Landroid/os/Message;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected abstract onMessage(Landroid/os/Message;)V
.end method

.method protected onStart(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method protected onStop(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public startThread()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v0, v0, v1}, Lcom/mob/tools/SSDKHandlerThread;->startThread(IILjava/lang/Object;)V

    return-void
.end method

.method public startThread(IILjava/lang/Object;)V
    .locals 2

    .line 23
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, -0x1

    .line 24
    iput v1, v0, Landroid/os/Message;->what:I

    .line 25
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 26
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 27
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    iget-object p1, p0, Lcom/mob/tools/SSDKHandlerThread;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stopThread()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0, v0, v0, v1}, Lcom/mob/tools/SSDKHandlerThread;->stopThread(IILjava/lang/Object;)V

    return-void
.end method

.method public stopThread(IILjava/lang/Object;)V
    .locals 2

    .line 36
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, -0x2

    .line 37
    iput v1, v0, Landroid/os/Message;->what:I

    .line 38
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 39
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 40
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 41
    iget-object p1, p0, Lcom/mob/tools/SSDKHandlerThread;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
