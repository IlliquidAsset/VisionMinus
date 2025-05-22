.class Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$2;
.super Ljava/lang/Object;
.source "NewHandheldDeviceActivity.java"

# interfaces
.implements Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout$SlowMotionSelectCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;


# direct methods
.method constructor <init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V
    .locals 0

    .line 610
    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$2;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$2;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$300(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->setVisibility(I)V

    return-void
.end method

.method public select(I)V
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$2;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$200(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-virtual {v0, p1}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setVideoResolution(I)V

    .line 614
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/base/utils/SPHelperUtils;->saveSlowResolution(I)V

    return-void
.end method
