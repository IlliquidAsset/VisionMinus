.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler$1;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->lambda$referenceHandleMessage$2(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

.field final synthetic val$reference:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 0

    .line 2980
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler$1;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    iput-object p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler$1;->val$reference:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2983
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler$1;->val$reference:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$6700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    const/16 v1, 0x11

    const-string v2, ""

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setGetDL01Value(ILjava/lang/String;I)V

    return-void
.end method
