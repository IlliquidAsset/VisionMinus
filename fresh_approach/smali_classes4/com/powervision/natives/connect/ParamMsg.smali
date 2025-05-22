.class public Lcom/powervision/natives/connect/ParamMsg;
.super Ljava/lang/Object;
.source "ParamMsg.java"


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
.field isDownLoad:Z

.field param:Ljava/lang/String;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field waitTime:I


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    .line 15
    iput v0, p0, Lcom/powervision/natives/connect/ParamMsg;->waitTime:I

    .line 18
    iput-boolean p1, p0, Lcom/powervision/natives/connect/ParamMsg;->isDownLoad:Z

    .line 19
    iput-object p2, p0, Lcom/powervision/natives/connect/ParamMsg;->param:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/powervision/natives/connect/ParamMsg;->value:Ljava/lang/Object;

    return-void
.end method
