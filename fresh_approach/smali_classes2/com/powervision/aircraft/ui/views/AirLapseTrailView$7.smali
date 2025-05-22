.class Lcom/powervision/aircraft/ui/views/AirLapseTrailView$7;
.super Ljava/lang/Object;
.source "AirLapseTrailView.java"

# interfaces
.implements Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LapseSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$7;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(II)V
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$7;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {v0, p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$1102(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;I)I

    .line 317
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$7;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {v0, p2}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$1202(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;I)I

    .line 318
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$7;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    mul-int v1, p1, p2

    mul-int/lit8 v1, v1, 0x1e

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$1302(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;I)I

    .line 319
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$7;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$1400(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Landroid/widget/TextView;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x1e

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$7;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$1500(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$7;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$1300(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)I

    move-result v1

    invoke-static {v1}, Lcom/powervision/base/utils/TimeUtils;->formatTimeToDelay(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSelected: interval = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoLength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AirLapseTrailView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1, p2}, Lcom/powervision/camera/camera/CameraManager;->setCaptureMode(III)V

    .line 325
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    const-string v2, "trail_time"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$7;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$1300(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 327
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$7;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    iget-object v0, v0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->airCraftLapseTrailCaptureFragment:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-virtual {v0, p1, p2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->setDataSelect(II)V

    .line 328
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$7;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$1000(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)V

    return-void
.end method
