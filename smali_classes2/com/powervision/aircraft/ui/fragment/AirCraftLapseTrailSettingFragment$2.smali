.class Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$2;
.super Ljava/lang/Object;
.source "AirCraftLapseTrailSettingFragment.java"

# interfaces
.implements Lcom/powervision/base/views/widget/WheelView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/powervision/base/views/widget/WheelView;I)V
    .locals 0

    .line 104
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LapseOrderSelectListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LapseOrderSelectListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LapseOrderSelectListener;->onSelected(I)V

    :cond_0
    return-void
.end method
