.class public final synthetic Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$VXutQ2hPsKz3mdHF985otRWMEXM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyHistogramDataListener;


# instance fields
.field public final synthetic f$0:Lcom/powervision/camera/camera/BaseCameraManager;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/camera/camera/BaseCameraManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$VXutQ2hPsKz3mdHF985otRWMEXM;->f$0:Lcom/powervision/camera/camera/BaseCameraManager;

    return-void
.end method


# virtual methods
.method public final histogramData([II)V
    .locals 1

    iget-object v0, p0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$VXutQ2hPsKz3mdHF985otRWMEXM;->f$0:Lcom/powervision/camera/camera/BaseCameraManager;

    invoke-virtual {v0, p1, p2}, Lcom/powervision/camera/camera/BaseCameraManager;->lambda$new$12$BaseCameraManager([II)V

    return-void
.end method
