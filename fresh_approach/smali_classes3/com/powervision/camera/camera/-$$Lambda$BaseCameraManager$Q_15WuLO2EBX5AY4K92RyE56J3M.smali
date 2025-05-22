.class public final synthetic Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$Q_15WuLO2EBX5AY4K92RyE56J3M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnCameraSensorHighTemperatureListener;


# instance fields
.field public final synthetic f$0:Lcom/powervision/camera/camera/BaseCameraManager;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/camera/camera/BaseCameraManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$Q_15WuLO2EBX5AY4K92RyE56J3M;->f$0:Lcom/powervision/camera/camera/BaseCameraManager;

    return-void
.end method


# virtual methods
.method public final onCameraSensorHighTemperature(I)V
    .locals 1

    iget-object v0, p0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$Q_15WuLO2EBX5AY4K92RyE56J3M;->f$0:Lcom/powervision/camera/camera/BaseCameraManager;

    invoke-virtual {v0, p1}, Lcom/powervision/camera/camera/BaseCameraManager;->lambda$new$48$BaseCameraManager(I)V

    return-void
.end method
