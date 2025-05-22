.class public Lcom/powervision/gcs/http/w4/W4BaseResult;
.super Ljava/lang/Object;
.source "W4BaseResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public CmdId:I

.field public Parameter:Ljava/lang/String;

.field public State:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isResultSuccess()Z
    .locals 1

    .line 13
    iget v0, p0, Lcom/powervision/gcs/http/w4/W4BaseResult;->State:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
