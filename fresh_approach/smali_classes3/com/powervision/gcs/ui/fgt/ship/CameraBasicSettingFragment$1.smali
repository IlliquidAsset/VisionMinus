.class Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$1;
.super Ljava/lang/Object;
.source "CameraBasicSettingFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->updateAllParameterValue(Lcom/powervision/localhttp/entity/BaseModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 191
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;)Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$Presenter;

    move-result-object p1

    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;

    iget-object p2, p2, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->shipCameraReversalSwitch:Landroid/widget/ToggleButton;

    invoke-virtual {p2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$Presenter;->setReversalEnable(Z)V

    return-void
.end method
