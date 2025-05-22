.class Lcom/powervision/aircraft/ui/views/AircraftTopView$1;
.super Ljava/lang/Object;
.source "AircraftTopView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/views/AircraftTopView;->initNonFlyClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/views/AircraftTopView;

.field final synthetic val$mHits:[J


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/views/AircraftTopView;[J)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView$1;->this$0:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    iput-object p2, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView$1;->val$mHits:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 102
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView$1;->val$mHits:[J

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {p1, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView$1;->val$mHits:[J

    array-length v0, p1

    sub-int/2addr v0, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    aput-wide v3, p1, v0

    .line 106
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView$1;->val$mHits:[J

    aget-wide v0, p1, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    sub-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const-string p1, "initNonFlyClick \u88ab\u5341\u51fb\u4e86....."

    .line 107
    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftTopView$1;->this$0:Lcom/powervision/aircraft/ui/views/AircraftTopView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AircraftTopView;->access$000(Lcom/powervision/aircraft/ui/views/AircraftTopView;)V

    :cond_0
    return-void
.end method
