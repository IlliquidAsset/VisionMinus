.class public Lcom/powervision/livestreaming/core/listener/RESScreenShotListener$RESScreenShotListenerRunable;
.super Ljava/lang/Object;
.source "RESScreenShotListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/livestreaming/core/listener/RESScreenShotListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RESScreenShotListenerRunable"
.end annotation


# instance fields
.field resScreenShotListener:Lcom/powervision/livestreaming/core/listener/RESScreenShotListener;

.field resultBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/powervision/livestreaming/core/listener/RESScreenShotListener;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/powervision/livestreaming/core/listener/RESScreenShotListener$RESScreenShotListenerRunable;->resScreenShotListener:Lcom/powervision/livestreaming/core/listener/RESScreenShotListener;

    .line 17
    iput-object p2, p0, Lcom/powervision/livestreaming/core/listener/RESScreenShotListener$RESScreenShotListenerRunable;->resultBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/powervision/livestreaming/core/listener/RESScreenShotListener$RESScreenShotListenerRunable;->resScreenShotListener:Lcom/powervision/livestreaming/core/listener/RESScreenShotListener;

    if-eqz v0, :cond_0

    .line 23
    iget-object v1, p0, Lcom/powervision/livestreaming/core/listener/RESScreenShotListener$RESScreenShotListenerRunable;->resultBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/powervision/livestreaming/core/listener/RESScreenShotListener;->onScreenShotResult(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
