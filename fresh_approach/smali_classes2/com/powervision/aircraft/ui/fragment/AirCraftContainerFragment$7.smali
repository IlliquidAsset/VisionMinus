.class Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$7;
.super Ljava/lang/Object;
.source "AirCraftContainerFragment.java"

# interfaces
.implements Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LapseOrderSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$7;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(I)V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$7;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;

    iget-object v0, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->airCraftLapseTrailCaptureFragment:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->setOrder(I)V

    .line 285
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$7;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->access$1000(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)V

    return-void
.end method
