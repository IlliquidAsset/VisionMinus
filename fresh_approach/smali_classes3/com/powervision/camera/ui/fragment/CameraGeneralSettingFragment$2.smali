.class Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$2;
.super Ljava/lang/Object;
.source "CameraGeneralSettingFragment.java"

# interfaces
.implements Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$GridAndDiagonalCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;


# direct methods
.method constructor <init>(Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$2;->this$0:Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseAF()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$2;->this$0:Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->onSetAntiFlickerMode(I)V

    return-void
.end method

.method public onSwitch50()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$2;->this$0:Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->onSetAntiFlickerMode(I)V

    return-void
.end method

.method public onSwitch60()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$2;->this$0:Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->onSetAntiFlickerMode(I)V

    return-void
.end method

.method public showGrid()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$2;->this$0:Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->openCloseLine(I)V

    return-void
.end method

.method public showGridAndDiagonal()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$2;->this$0:Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->openCloseLine(I)V

    return-void
.end method

.method public showNone()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$2;->this$0:Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->openCloseLine(I)V

    return-void
.end method
