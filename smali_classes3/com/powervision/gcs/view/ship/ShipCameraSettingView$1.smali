.class Lcom/powervision/gcs/view/ship/ShipCameraSettingView$1;
.super Lcom/powervision/localhttp/PVW4RequestSimpleListener;
.source "ShipCameraSettingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/ship/ShipCameraSettingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/ShipCameraSettingView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/ShipCameraSettingView;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipCameraSettingView;

    invoke-direct {p0}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllParams(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4AllParams;",
            ">;)V"
        }
    .end annotation

    .line 168
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->getAllParams(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 170
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BaseModel;->isPVW4Success()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 171
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipCameraSettingView;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->access$000(Lcom/powervision/gcs/view/ship/ShipCameraSettingView;)Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipCameraSettingView;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->access$000(Lcom/powervision/gcs/view/ship/ShipCameraSettingView;)Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->updateAllParameterValue(Lcom/powervision/localhttp/entity/BaseModel;)V

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipCameraSettingView;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->access$100(Lcom/powervision/gcs/view/ship/ShipCameraSettingView;)Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 176
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipCameraSettingView;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->access$100(Lcom/powervision/gcs/view/ship/ShipCameraSettingView;)Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->updateAllParameterValue(Lcom/powervision/localhttp/entity/BaseModel;)V

    .line 179
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipCameraSettingView;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->access$200(Lcom/powervision/gcs/view/ship/ShipCameraSettingView;)Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 180
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipCameraSettingView;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->access$200(Lcom/powervision/gcs/view/ship/ShipCameraSettingView;)Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->updateAllParameterValue(Lcom/powervision/localhttp/entity/BaseModel;)V

    :cond_2
    return-void
.end method
