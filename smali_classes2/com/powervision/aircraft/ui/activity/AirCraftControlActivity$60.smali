.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$60;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->clearNewerModeOnMap()V
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

    .line 5647
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$60;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 5650
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$60;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$10500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/map/manager/MapSwitchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/map/manager/MapSwitchManager;->removeNewerMode()V

    return-void
.end method
