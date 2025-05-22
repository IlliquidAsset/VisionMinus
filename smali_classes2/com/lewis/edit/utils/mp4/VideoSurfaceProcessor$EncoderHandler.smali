.class Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor$EncoderHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "VideoSurfaceProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EncoderHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;)V
    .locals 0

    .line 187
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor$1;)V
    .locals 0

    .line 185
    invoke-direct {p0, p1}, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor$EncoderHandler;-><init>(Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;Landroid/os/Message;)V
    .locals 1

    .line 192
    iget p2, p2, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-ne v0, p2, :cond_0

    .line 194
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sur-vsp-finish = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->access$100(Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    invoke-static {p1}, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->access$200(Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;)Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor$WorkEncoderListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 196
    invoke-static {p1}, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->access$200(Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;)Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor$WorkEncoderListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor$WorkEncoderListener;->encoderSuccess()V

    :cond_0
    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 185
    check-cast p1, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor$EncoderHandler;->referenceHandleMessage(Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;Landroid/os/Message;)V

    return-void
.end method
