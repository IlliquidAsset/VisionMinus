.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$59;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showNewerModeOnMap(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field final synthetic val$lat:I

.field final synthetic val$lon:I


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;II)V
    .locals 0

    .line 5636
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$59;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$59;->val$lat:I

    iput p3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$59;->val$lon:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 5640
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$59;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$10500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/map/manager/MapSwitchManager;

    move-result-object v0

    iget v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$59;->val$lat:I

    iget v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$59;->val$lon:I

    invoke-virtual {v0, v1, v2}, Lcom/powervision/map/manager/MapSwitchManager;->drawNewerMode(II)V

    return-void
.end method
