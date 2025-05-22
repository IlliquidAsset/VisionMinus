.class public final synthetic Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$jy_8W7N1m7RhpmeeKwwmtdXSPY0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnRecordDurationListener;


# instance fields
.field public final synthetic f$0:Lcom/powervision/camera/camera/BaseCameraManager;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/camera/camera/BaseCameraManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$jy_8W7N1m7RhpmeeKwwmtdXSPY0;->f$0:Lcom/powervision/camera/camera/BaseCameraManager;

    return-void
.end method


# virtual methods
.method public final onRecordDuration(I)V
    .locals 1

    iget-object v0, p0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$jy_8W7N1m7RhpmeeKwwmtdXSPY0;->f$0:Lcom/powervision/camera/camera/BaseCameraManager;

    invoke-virtual {v0, p1}, Lcom/powervision/camera/camera/BaseCameraManager;->lambda$new$41$BaseCameraManager(I)V

    return-void
.end method
