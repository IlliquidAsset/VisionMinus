.class Lcom/powervision/livestreaming/core/RESVideoCore$1;
.super Ljava/lang/Object;
.source "RESVideoCore.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/livestreaming/core/RESVideoCore;->prepare(Lcom/powervision/livestreaming/model/RESCoreParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/livestreaming/core/RESVideoCore;


# direct methods
.method constructor <init>(Lcom/powervision/livestreaming/core/RESVideoCore;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$1;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 79
    invoke-static {}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "====================mPlayerSurfaceTexture: onFrameAvailable"

    invoke-static {p1, v0}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$1;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {p1}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$100(Lcom/powervision/livestreaming/core/RESVideoCore;)Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$1;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {p1}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$100(Lcom/powervision/livestreaming/core/RESVideoCore;)Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->addFrameNum()V

    :cond_0
    return-void
.end method
