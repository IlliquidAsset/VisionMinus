.class public final synthetic Lcom/powervision/gcs/camera/w4/-$$Lambda$CameraHelper$tmNG8ADWwr5Jk3r6Sy544gCwO28;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/gcs/camera/w4/CameraHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/gcs/camera/w4/CameraHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/camera/w4/-$$Lambda$CameraHelper$tmNG8ADWwr5Jk3r6Sy544gCwO28;->f$0:Lcom/powervision/gcs/camera/w4/CameraHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/-$$Lambda$CameraHelper$tmNG8ADWwr5Jk3r6Sy544gCwO28;->f$0:Lcom/powervision/gcs/camera/w4/CameraHelper;

    invoke-virtual {v0}, Lcom/powervision/gcs/camera/w4/CameraHelper;->lambda$checkHeartbeat$0$CameraHelper()V

    return-void
.end method
