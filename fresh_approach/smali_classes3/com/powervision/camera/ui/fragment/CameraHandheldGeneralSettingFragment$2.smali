.class Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment$2;
.super Ljava/lang/Object;
.source "CameraHandheldGeneralSettingFragment.java"

# interfaces
.implements Lcom/powervision/camera/ui/adapter/CameraHandheldGeneralAdapter$GridAndDiagonalCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;


# direct methods
.method constructor <init>(Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment$2;->this$0:Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseAF()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment$2;->this$0:Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;->onSetAntiFlickerMode(I)V

    return-void
.end method

.method public onSwitch50()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment$2;->this$0:Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;->onSetAntiFlickerMode(I)V

    return-void
.end method

.method public onSwitch60()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment$2;->this$0:Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;->onSetAntiFlickerMode(I)V

    return-void
.end method

.method public showAutoGrid()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment$2;->this$0:Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;->openCloseLine(I)V

    return-void
.end method

.method public showGrid()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment$2;->this$0:Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;->openCloseLine(I)V

    return-void
.end method

.method public showGridAndDiagonal()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment$2;->this$0:Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;->openCloseLine(I)V

    return-void
.end method

.method public showNone()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment$2;->this$0:Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/camera/ui/fragment/CameraHandheldGeneralSettingFragment;->openCloseLine(I)V

    return-void
.end method
