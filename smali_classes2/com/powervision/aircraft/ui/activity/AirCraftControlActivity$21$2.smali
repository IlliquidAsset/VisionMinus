.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21$2;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Lcom/powervision/base/utils/DialogUtils$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;->returnSlide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;)V
    .locals 0

    .line 3496
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21$2;->this$1:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 3499
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21$2;->this$1:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;

    iget-object p1, p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$21;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$8900(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setConfirmDisarm(I)V

    return-void
.end method
