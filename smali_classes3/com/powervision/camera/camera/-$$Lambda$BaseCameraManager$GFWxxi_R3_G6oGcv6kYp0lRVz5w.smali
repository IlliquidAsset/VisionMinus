.class public final synthetic Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$GFWxxi_R3_G6oGcv6kYp0lRVz5w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnInternalStorageFullListener;


# instance fields
.field public final synthetic f$0:Lcom/powervision/camera/camera/BaseCameraManager;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/camera/camera/BaseCameraManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$GFWxxi_R3_G6oGcv6kYp0lRVz5w;->f$0:Lcom/powervision/camera/camera/BaseCameraManager;

    return-void
.end method


# virtual methods
.method public final onInternalStorageFull()V
    .locals 1

    iget-object v0, p0, Lcom/powervision/camera/camera/-$$Lambda$BaseCameraManager$GFWxxi_R3_G6oGcv6kYp0lRVz5w;->f$0:Lcom/powervision/camera/camera/BaseCameraManager;

    invoke-virtual {v0}, Lcom/powervision/camera/camera/BaseCameraManager;->lambda$new$37$BaseCameraManager()V

    return-void
.end method
