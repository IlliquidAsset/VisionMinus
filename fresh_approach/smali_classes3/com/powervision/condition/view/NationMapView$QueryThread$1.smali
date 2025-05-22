.class Lcom/powervision/condition/view/NationMapView$QueryThread$1;
.super Ljava/util/TimerTask;
.source "NationMapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/condition/view/NationMapView$QueryThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/condition/view/NationMapView$QueryThread;

.field final synthetic val$timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/powervision/condition/view/NationMapView$QueryThread;Ljava/util/Timer;)V
    .locals 0

    .line 2585
    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView$QueryThread$1;->this$1:Lcom/powervision/condition/view/NationMapView$QueryThread;

    iput-object p2, p0, Lcom/powervision/condition/view/NationMapView$QueryThread$1;->val$timer:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 2588
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$QueryThread$1;->this$1:Lcom/powervision/condition/view/NationMapView$QueryThread;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/condition/view/NationMapView$QueryThread;->access$1702(Lcom/powervision/condition/view/NationMapView$QueryThread;Z)Z

    .line 2590
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$QueryThread$1;->val$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2602
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$QueryThread$1;->this$1:Lcom/powervision/condition/view/NationMapView$QueryThread;

    iget-object v0, v0, Lcom/powervision/condition/view/NationMapView$QueryThread;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$1800(Lcom/powervision/condition/view/NationMapView;)Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnGeocodeSearchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2604
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$QueryThread$1;->this$1:Lcom/powervision/condition/view/NationMapView$QueryThread;

    iget-object v0, v0, Lcom/powervision/condition/view/NationMapView$QueryThread;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$1800(Lcom/powervision/condition/view/NationMapView;)Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnGeocodeSearchListener;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$QueryThread$1;->this$1:Lcom/powervision/condition/view/NationMapView$QueryThread;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView$QueryThread;->access$1900(Lcom/powervision/condition/view/NationMapView$QueryThread;)D

    move-result-wide v3

    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$QueryThread$1;->this$1:Lcom/powervision/condition/view/NationMapView$QueryThread;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView$QueryThread;->access$2000(Lcom/powervision/condition/view/NationMapView$QueryThread;)D

    move-result-wide v5

    invoke-interface/range {v1 .. v6}, Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnGeocodeSearchListener;->onRegeocodeSearched(Ljava/lang/String;DD)V

    :cond_0
    return-void
.end method
