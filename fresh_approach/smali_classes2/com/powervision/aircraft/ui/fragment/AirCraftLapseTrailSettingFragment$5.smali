.class Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$5;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$5;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Integer;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$5;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$1200(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Lcom/powervision/base/views/widget/WheelView;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/powervision/base/views/widget/WheelView;->setCurrentItem(I)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 178
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$5;->onChanged(Ljava/lang/Integer;)V

    return-void
.end method
