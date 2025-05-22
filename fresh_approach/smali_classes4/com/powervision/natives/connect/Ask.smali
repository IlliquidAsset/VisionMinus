.class public Lcom/powervision/natives/connect/Ask;
.super Ljava/lang/Object;
.source "Ask.java"


# instance fields
.field questNum:I

.field time:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/powervision/natives/connect/Ask;->time:I

    .line 9
    iput v0, p0, Lcom/powervision/natives/connect/Ask;->questNum:I

    .line 11
    iput p1, p0, Lcom/powervision/natives/connect/Ask;->time:I

    .line 12
    iput p2, p0, Lcom/powervision/natives/connect/Ask;->questNum:I

    return-void
.end method
