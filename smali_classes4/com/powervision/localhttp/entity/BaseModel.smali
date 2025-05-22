.class public Lcom/powervision/localhttp/entity/BaseModel;
.super Ljava/lang/Object;
.source "BaseModel.java"


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

.field public Parameter:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public State:I

.field public state:I

.field public storage_state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/powervision/localhttp/entity/BaseModel;->CmdId:I

    return-void
.end method


# virtual methods
.method public isPVW4Success()Z
    .locals 1

    .line 30
    iget v0, p0, Lcom/powervision/localhttp/entity/BaseModel;->State:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
