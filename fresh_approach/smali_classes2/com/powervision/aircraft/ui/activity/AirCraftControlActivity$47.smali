.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$47;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LapseCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->initFreeMode()V
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

    .line 4963
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$47;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 4966
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$47;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$11800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/view/ViewStub;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 4967
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$47;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$8000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    return-void
.end method
