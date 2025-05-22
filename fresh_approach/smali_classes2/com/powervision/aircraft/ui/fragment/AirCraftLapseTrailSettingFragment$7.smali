.class Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$7;
.super Ljava/lang/Object;
.source "AirCraftLapseTrailSettingFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$7;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Double;)V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$7;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$402(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;Z)Z

    .line 198
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$7;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$1300(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;D)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 194
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$7;->onChanged(Ljava/lang/Double;)V

    return-void
.end method
