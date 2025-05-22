.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$45;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Lcom/powervision/aircraft/ui/views/AirLapseTrailView$LapseCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->initTrailMode()V
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

    .line 4911
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$45;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 4914
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$45;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$11500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->setVisibility(I)V

    .line 4915
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$45;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$11700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$45;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$11600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/view/ViewStub;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeView(Landroid/view/View;)V

    return-void
.end method
