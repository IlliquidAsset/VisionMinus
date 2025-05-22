.class public Lcom/powervision/condition/view/NationMapView$QueryThread;
.super Ljava/lang/Thread;
.source "NationMapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/condition/view/NationMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QueryThread"
.end annotation


# instance fields
.field private isCanceled:Z

.field private lat:D

.field private lon:D

.field final synthetic this$0:Lcom/powervision/condition/view/NationMapView;


# direct methods
.method public constructor <init>(Lcom/powervision/condition/view/NationMapView;DD)V
    .locals 0

    .line 2575
    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView$QueryThread;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 2572
    iput-boolean p1, p0, Lcom/powervision/condition/view/NationMapView$QueryThread;->isCanceled:Z

    .line 2576
    iput-wide p2, p0, Lcom/powervision/condition/view/NationMapView$QueryThread;->lat:D

    .line 2577
    iput-wide p4, p0, Lcom/powervision/condition/view/NationMapView$QueryThread;->lon:D

    return-void
.end method

.method static synthetic access$1702(Lcom/powervision/condition/view/NationMapView$QueryThread;Z)Z
    .locals 0

    .line 2566
    iput-boolean p1, p0, Lcom/powervision/condition/view/NationMapView$QueryThread;->isCanceled:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/powervision/condition/view/NationMapView$QueryThread;)D
    .locals 2

    .line 2566
    iget-wide v0, p0, Lcom/powervision/condition/view/NationMapView$QueryThread;->lat:D

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/powervision/condition/view/NationMapView$QueryThread;)D
    .locals 2

    .line 2566
    iget-wide v0, p0, Lcom/powervision/condition/view/NationMapView$QueryThread;->lon:D

    return-wide v0
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 2582
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2584
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 2585
    new-instance v1, Lcom/powervision/condition/view/NationMapView$QueryThread$1;

    invoke-direct {v1, p0, v0}, Lcom/powervision/condition/view/NationMapView$QueryThread$1;-><init>(Lcom/powervision/condition/view/NationMapView$QueryThread;Ljava/util/Timer;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 2610
    new-instance v4, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/powervision/condition/view/NationMapView$QueryThread;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-virtual {v1}, Lcom/powervision/condition/view/NationMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v4, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 2613
    :try_start_0
    iget-wide v5, p0, Lcom/powervision/condition/view/NationMapView$QueryThread;->lat:D

    iget-wide v7, p0, Lcom/powervision/condition/view/NationMapView$QueryThread;->lon:D

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v1

    .line 2624
    iget-boolean v2, p0, Lcom/powervision/condition/view/NationMapView$QueryThread;->isCanceled:Z

    if-eqz v2, :cond_0

    return-void

    .line 2628
    :cond_0
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2629
    iget-object v2, p0, Lcom/powervision/condition/view/NationMapView$QueryThread;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v2}, Lcom/powervision/condition/view/NationMapView;->access$1800(Lcom/powervision/condition/view/NationMapView;)Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnGeocodeSearchListener;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 2630
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    .line 2631
    iget-object v3, p0, Lcom/powervision/condition/view/NationMapView$QueryThread;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v3}, Lcom/powervision/condition/view/NationMapView;->access$1800(Lcom/powervision/condition/view/NationMapView;)Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnGeocodeSearchListener;

    move-result-object v4

    invoke-virtual {v1, v2}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lcom/powervision/condition/view/NationMapView$QueryThread;->lat:D

    iget-wide v8, p0, Lcom/powervision/condition/view/NationMapView$QueryThread;->lon:D

    invoke-interface/range {v4 .. v9}, Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnGeocodeSearchListener;->onRegeocodeSearched(Ljava/lang/String;DD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2634
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2637
    iget-boolean v1, p0, Lcom/powervision/condition/view/NationMapView$QueryThread;->isCanceled:Z

    if-eqz v1, :cond_1

    return-void

    .line 2641
    :cond_1
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2642
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$QueryThread;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$1800(Lcom/powervision/condition/view/NationMapView;)Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnGeocodeSearchListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2643
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$QueryThread;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$1800(Lcom/powervision/condition/view/NationMapView;)Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnGeocodeSearchListener;

    move-result-object v1

    iget-wide v3, p0, Lcom/powervision/condition/view/NationMapView$QueryThread;->lat:D

    iget-wide v5, p0, Lcom/powervision/condition/view/NationMapView$QueryThread;->lon:D

    const-string v2, ""

    invoke-interface/range {v1 .. v6}, Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnGeocodeSearchListener;->onRegeocodeSearched(Ljava/lang/String;DD)V

    :cond_2
    :goto_0
    return-void
.end method
