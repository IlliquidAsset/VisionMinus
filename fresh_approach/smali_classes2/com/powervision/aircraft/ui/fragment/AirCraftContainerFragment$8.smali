.class Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$8;
.super Ljava/lang/Object;
.source "AirCraftContainerFragment.java"

# interfaces
.implements Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LapseSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$8;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(II)V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$8;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;

    mul-int v1, p1, p2

    mul-int/lit8 v1, v1, 0x1e

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->access$1102(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;I)I

    .line 292
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$8;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->access$1200(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)Landroid/widget/TextView;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x1e

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$8;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->access$1300(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$8;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->access$1100(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)I

    move-result v1

    invoke-static {v1}, Lcom/powervision/base/utils/TimeUtils;->formatTimeToDelay(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
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

    const-string v1, "AirCraftContainerFragme"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1, p2}, Lcom/powervision/camera/camera/CameraManager;->setCaptureMode(III)V

    .line 298
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$8;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;

    iget-object v0, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->airCraftLapseTrailCaptureFragment:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-virtual {v0, p1, p2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->setDataSelect(II)V

    .line 299
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$8;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->access$1000(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)V

    return-void
.end method
