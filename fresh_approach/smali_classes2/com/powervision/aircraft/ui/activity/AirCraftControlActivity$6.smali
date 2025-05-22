.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$6;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->updateVps(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field final synthetic val$vps:F


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;F)V
    .locals 0

    .line 1153
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$6;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$6;->val$vps:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1156
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object v0

    iget-boolean v0, v0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isArmed:Z

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$6;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$1100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/FlightParameterView;

    move-result-object v0

    iget v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$6;->val$vps:F

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/FlightParameterView;->setAbsoluteHeight(F)V

    goto :goto_0

    .line 1159
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$6;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$1100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/FlightParameterView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/FlightParameterView;->setAbsoluteHeight(F)V

    :goto_0
    return-void
.end method
