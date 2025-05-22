.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$40;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onFollowGuideNext(Landroid/util/SparseArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field final synthetic val$localmode:I


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)V
    .locals 0

    .line 4570
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$40;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$40;->val$localmode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 4570
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$40;->onChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onChanged(Ljava/lang/String;)V
    .locals 2

    .line 4573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChanged: mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "helin"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FOLLOW"

    .line 4574
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4575
    iget p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$40;->val$localmode:I

    if-nez p1, :cond_0

    .line 4576
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$40;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_smart_follow_icon:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4578
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$40;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/ImageView;

    move-result-object p1

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_smart_water_follow_icon:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4579
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$40;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$10202(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Z)Z

    .line 4581
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$40;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$11300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4582
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$40;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;

    move-result-object p1

    const/4 v0, 0x4

    iget v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$40;->val$localmode:I

    invoke-virtual {p1, v0, v1}, Lcom/powervision/aircraft/ui/views/SmartTopFuncitonView;->initFollowFragments(II)V

    .line 4583
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object p1

    const-class v0, Ljava/lang/String;

    const-string v1, "air_main_mode"

    invoke-virtual {p1, v1, v0}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_2
    return-void
.end method
