.class public final synthetic Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraHandheldGeneralSettingFragment$pvBIHUyy-_R-sA1Z8TxjFLbnNoM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraHandheldGeneralSettingFragment$pvBIHUyy-_R-sA1Z8TxjFLbnNoM;->f$0:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraHandheldGeneralSettingFragment$pvBIHUyy-_R-sA1Z8TxjFLbnNoM;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraHandheldGeneralSettingFragment$pvBIHUyy-_R-sA1Z8TxjFLbnNoM;->f$0:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraHandheldGeneralSettingFragment$pvBIHUyy-_R-sA1Z8TxjFLbnNoM;->f$1:Z

    invoke-static {v0, v1}, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;->lambda$onResetCameraResult$1(Ljava/lang/String;Z)V

    return-void
.end method
