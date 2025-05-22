.class Lcom/powervision/gcs/utils/LotChinaUtil$Rectangle;
.super Ljava/lang/Object;
.source "LotChinaUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/utils/LotChinaUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Rectangle"
.end annotation


# instance fields
.field East:D

.field North:D

.field South:D

.field West:D

.field final synthetic this$0:Lcom/powervision/gcs/utils/LotChinaUtil;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/utils/LotChinaUtil;DDDD)V
    .locals 2

    .line 70
    iput-object p1, p0, Lcom/powervision/gcs/utils/LotChinaUtil$Rectangle;->this$0:Lcom/powervision/gcs/utils/LotChinaUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p4, p5, p8, p9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/gcs/utils/LotChinaUtil$Rectangle;->West:D

    .line 72
    invoke-static {p2, p3, p6, p7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/gcs/utils/LotChinaUtil$Rectangle;->North:D

    .line 73
    invoke-static {p4, p5, p8, p9}, Ljava/lang/Math;->max(DD)D

    move-result-wide p4

    iput-wide p4, p0, Lcom/powervision/gcs/utils/LotChinaUtil$Rectangle;->East:D

    .line 74
    invoke-static {p2, p3, p6, p7}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/powervision/gcs/utils/LotChinaUtil$Rectangle;->South:D

    return-void
.end method
