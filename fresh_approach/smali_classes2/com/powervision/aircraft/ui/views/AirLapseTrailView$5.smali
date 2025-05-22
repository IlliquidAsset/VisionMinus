.class Lcom/powervision/aircraft/ui/views/AirLapseTrailView$5;
.super Ljava/lang/Object;
.source "AirLapseTrailView.java"

# interfaces
.implements Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$OnSelectDataChangeListener;


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

    .line 287
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$5;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public countChange(I)V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$5;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {v0, p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$600(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;I)V

    return-void
.end method

.method public getTrailData(Lcom/powervision/aircraft/lapse/data/LapseTrailData;D)V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$5;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {v0, p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$702(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;Lcom/powervision/aircraft/lapse/data/LapseTrailData;)Lcom/powervision/aircraft/lapse/data/LapseTrailData;

    .line 296
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$5;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {v0, p2, p3}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$802(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;D)D

    .line 297
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$5;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    iget-object p1, p1, Lcom/powervision/aircraft/lapse/data/LapseTrailData;->data:Ljava/util/List;

    invoke-static {p2, p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$902(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;Ljava/util/List;)Ljava/util/List;

    .line 299
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$5;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$1000(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)V

    return-void
.end method
