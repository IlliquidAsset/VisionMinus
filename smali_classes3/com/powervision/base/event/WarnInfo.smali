.class public Lcom/powervision/base/event/WarnInfo;
.super Ljava/lang/Object;
.source "WarnInfo.java"


# instance fields
.field public enabled:I

.field public health:I

.field public present:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/powervision/base/event/WarnInfo;->present:I

    .line 14
    iput p2, p0, Lcom/powervision/base/event/WarnInfo;->enabled:I

    .line 15
    iput p3, p0, Lcom/powervision/base/event/WarnInfo;->health:I

    return-void
.end method
