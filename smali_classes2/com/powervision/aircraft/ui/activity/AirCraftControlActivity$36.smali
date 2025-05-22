.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$36;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->addMessageAndUpdate(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field final synthetic val$hoverMessages:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Ljava/util/List;)V
    .locals 0

    .line 4211
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$36;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput-object p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$36;->val$hoverMessages:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    .line 4214
    :goto_0
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$36;->val$hoverMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4215
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$36;->val$hoverMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/warning/HoverMessage;

    .line 4216
    iget-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$36;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/warning/manager/WarningManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
