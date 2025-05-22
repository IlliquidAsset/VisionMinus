.class Lcom/powervision/aircraft/ui/views/AirLapseTrailView$6;
.super Ljava/lang/Object;
.source "AirLapseTrailView.java"

# interfaces
.implements Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LapseOrderSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$6;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(I)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$6;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    iget-object v0, v0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->airCraftLapseTrailCaptureFragment:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->setOrder(I)V

    .line 310
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$6;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$1000(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)V

    return-void
.end method
