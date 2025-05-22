.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$61;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Lcom/powervision/base/utils/DialogUtils$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lambda$new$62()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 0

    .line 6014
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$61;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 6017
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$61;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$14800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setCurrencyMode(II)V

    .line 6018
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->createLapseFile()V

    .line 6019
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    const-string v0, "PV_GIM_LSE_FLAG"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadGimbalIntParameter(Ljava/lang/String;I)I

    .line 6020
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$61;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$14900(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I

    move-result p1

    const/16 v0, 0xf

    if-lt p1, v0, :cond_0

    .line 6021
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$61;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$15000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    :cond_0
    return-void
.end method
