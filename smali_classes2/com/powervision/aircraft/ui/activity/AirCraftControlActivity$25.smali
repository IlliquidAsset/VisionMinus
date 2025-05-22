.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$25;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/powervision/base/warning/HoverMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 0

    .line 3566
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$25;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/powervision/base/warning/HoverMessage;)V
    .locals 1

    .line 3569
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$25;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/warning/manager/WarningManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 3566
    check-cast p1, Lcom/powervision/base/warning/HoverMessage;

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$25;->onChanged(Lcom/powervision/base/warning/HoverMessage;)V

    return-void
.end method
