.class public abstract Lcom/powervision/gcs/base/BaseHandleReference;
.super Landroid/os/Handler;
.source "BaseHandleReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/Handler;"
    }
.end annotation


# instance fields
.field private mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler$Callback;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler$Callback;",
            "TT;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/powervision/gcs/base/BaseHandleReference;->mReference:Ljava/lang/ref/WeakReference;

    .line 29
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/powervision/gcs/base/BaseHandleReference;->mReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Landroid/os/Handler$Callback;",
            "TT;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/powervision/gcs/base/BaseHandleReference;->mReference:Ljava/lang/ref/WeakReference;

    .line 39
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/powervision/gcs/base/BaseHandleReference;->mReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/powervision/gcs/base/BaseHandleReference;->mReference:Ljava/lang/ref/WeakReference;

    .line 34
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/powervision/gcs/base/BaseHandleReference;->mReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/powervision/gcs/base/BaseHandleReference;->mReference:Ljava/lang/ref/WeakReference;

    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/powervision/gcs/base/BaseHandleReference;->mReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/powervision/gcs/base/BaseHandleReference;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0, v0, p1}, Lcom/powervision/gcs/base/BaseHandleReference;->referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public abstract referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation
.end method
