.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$31;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;
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

    .line 4153
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$31;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 4157
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$31;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$10400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4159
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$31;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$10500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/map/manager/MapSwitchManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/powervision/map/manager/MapSwitchManager;->setLocationCenter(I)V

    return-void
.end method
