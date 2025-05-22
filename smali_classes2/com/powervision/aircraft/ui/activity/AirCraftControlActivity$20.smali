.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$20;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Lcom/powervision/aircraft/ui/views/SlideReturnView$SlideListener;


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

    .line 3438
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$20;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelReturnSlide()V
    .locals 2

    .line 3441
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$20;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$7600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/SlideReturnView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->setVisibility(I)V

    return-void
.end method

.method public returnSlide()V
    .locals 3

    .line 3446
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$20;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$7600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/SlideReturnView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/SlideReturnView;->setVisibility(I)V

    .line 3447
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$20;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$7700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$20;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$7700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3448
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$20;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$7800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3449
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$20;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$7900(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setRtl()V

    .line 3450
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$20;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3452
    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "ap03_one_key_rtl"

    .line 3450
    invoke-static {v0, v2, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 3453
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$20;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$7800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3454
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$20;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$8000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    :cond_1
    :goto_0
    return-void
.end method
