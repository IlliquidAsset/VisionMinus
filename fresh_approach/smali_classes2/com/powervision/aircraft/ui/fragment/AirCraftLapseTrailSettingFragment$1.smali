.class Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$1;
.super Lcom/powervision/base/views/widget/WheelView$WheelAdapter;
.source "AirCraftLapseTrailSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->setAdapter()V
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

    .line 63
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-direct {p0}, Lcom/powervision/base/views/widget/WheelView$WheelAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected getItem(I)Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected getItemCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
