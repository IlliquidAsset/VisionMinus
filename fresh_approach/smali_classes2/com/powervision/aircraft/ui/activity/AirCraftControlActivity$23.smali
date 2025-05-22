.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$23;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Lcom/powervision/base/views/LiveStatusView$LiveViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->setListener()V
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

    .line 3550
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$23;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickLiveStatus()V
    .locals 3

    .line 3553
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$23;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$9600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/dialog/LiveStreamDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$23;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-virtual {v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "push_streaming"

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/dialog/LiveStreamDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
