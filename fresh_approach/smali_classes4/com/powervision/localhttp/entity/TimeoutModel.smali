.class public Lcom/powervision/localhttp/entity/TimeoutModel;
.super Ljava/lang/Object;
.source "TimeoutModel.java"


# instance fields
.field public CmdId:I

.field public State:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/powervision/localhttp/entity/TimeoutModel;->CmdId:I

    .line 13
    iput p2, p0, Lcom/powervision/localhttp/entity/TimeoutModel;->State:I

    return-void
.end method
