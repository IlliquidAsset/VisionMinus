.class public Lcom/powervision/livestreaming/core/listener/RESVideoChangeListener$RESVideoChangeRunable;
.super Ljava/lang/Object;
.source "RESVideoChangeListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/livestreaming/core/listener/RESVideoChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RESVideoChangeRunable"
.end annotation


# instance fields
.field h:I

.field videoChangeListener:Lcom/powervision/livestreaming/core/listener/RESVideoChangeListener;

.field w:I


# direct methods
.method public constructor <init>(Lcom/powervision/livestreaming/core/listener/RESVideoChangeListener;II)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/powervision/livestreaming/core/listener/RESVideoChangeListener$RESVideoChangeRunable;->videoChangeListener:Lcom/powervision/livestreaming/core/listener/RESVideoChangeListener;

    .line 16
    iput p2, p0, Lcom/powervision/livestreaming/core/listener/RESVideoChangeListener$RESVideoChangeRunable;->w:I

    .line 17
    iput p3, p0, Lcom/powervision/livestreaming/core/listener/RESVideoChangeListener$RESVideoChangeRunable;->h:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/powervision/livestreaming/core/listener/RESVideoChangeListener$RESVideoChangeRunable;->videoChangeListener:Lcom/powervision/livestreaming/core/listener/RESVideoChangeListener;

    if-eqz v0, :cond_0

    .line 23
    iget v1, p0, Lcom/powervision/livestreaming/core/listener/RESVideoChangeListener$RESVideoChangeRunable;->w:I

    iget v2, p0, Lcom/powervision/livestreaming/core/listener/RESVideoChangeListener$RESVideoChangeRunable;->h:I

    invoke-interface {v0, v1, v2}, Lcom/powervision/livestreaming/core/listener/RESVideoChangeListener;->onVideoSizeChanged(II)V

    :cond_0
    return-void
.end method
