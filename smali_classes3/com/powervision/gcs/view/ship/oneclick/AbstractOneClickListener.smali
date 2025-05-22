.class public abstract Lcom/powervision/gcs/view/ship/oneclick/AbstractOneClickListener;
.super Ljava/lang/Object;
.source "AbstractOneClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final T:I = 0x12c


# instance fields
.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lcom/powervision/gcs/view/ship/oneclick/AbstractOneClickListener;->time:J

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 18
    iget-wide v2, p0, Lcom/powervision/gcs/view/ship/oneclick/AbstractOneClickListener;->time:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 19
    iput-wide v0, p0, Lcom/powervision/gcs/view/ship/oneclick/AbstractOneClickListener;->time:J

    .line 20
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/ship/oneclick/AbstractOneClickListener;->oneClick(Landroid/view/View;)V

    goto :goto_0

    .line 22
    :cond_0
    iput-wide v0, p0, Lcom/powervision/gcs/view/ship/oneclick/AbstractOneClickListener;->time:J

    :goto_0
    return-void
.end method

.method public abstract oneClick(Landroid/view/View;)V
.end method
