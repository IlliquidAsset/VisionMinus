.class public Lcom/powervision/livestreaming/core/listener/RESConnectionListener$RESWriteErrorRunable;
.super Ljava/lang/Object;
.source "RESConnectionListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/livestreaming/core/listener/RESConnectionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RESWriteErrorRunable"
.end annotation


# instance fields
.field connectionListener:Lcom/powervision/livestreaming/core/listener/RESConnectionListener;

.field errno:I


# direct methods
.method public constructor <init>(Lcom/powervision/livestreaming/core/listener/RESConnectionListener;I)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/powervision/livestreaming/core/listener/RESConnectionListener$RESWriteErrorRunable;->connectionListener:Lcom/powervision/livestreaming/core/listener/RESConnectionListener;

    .line 21
    iput p2, p0, Lcom/powervision/livestreaming/core/listener/RESConnectionListener$RESWriteErrorRunable;->errno:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/powervision/livestreaming/core/listener/RESConnectionListener$RESWriteErrorRunable;->connectionListener:Lcom/powervision/livestreaming/core/listener/RESConnectionListener;

    if-eqz v0, :cond_0

    .line 27
    iget v1, p0, Lcom/powervision/livestreaming/core/listener/RESConnectionListener$RESWriteErrorRunable;->errno:I

    invoke-interface {v0, v1}, Lcom/powervision/livestreaming/core/listener/RESConnectionListener;->onWriteError(I)V

    :cond_0
    return-void
.end method
