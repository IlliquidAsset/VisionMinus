.class public Lcom/powervision/base/base/entity/BaseResultEntity;
.super Ljava/lang/Object;
.source "BaseResultEntity.java"


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
.field private code:I

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private msg:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/powervision/base/base/entity/BaseResultEntity;->status:I

    .line 12
    iput v0, p0, Lcom/powervision/base/base/entity/BaseResultEntity;->code:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/powervision/base/base/entity/BaseResultEntity;->code:I

    return v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/powervision/base/base/entity/BaseResultEntity;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/powervision/base/base/entity/BaseResultEntity;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/powervision/base/base/entity/BaseResultEntity;->status:I

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 20
    iget v0, p0, Lcom/powervision/base/base/entity/BaseResultEntity;->status:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/powervision/base/base/entity/BaseResultEntity;->code:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setCode(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/powervision/base/base/entity/BaseResultEntity;->code:I

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/powervision/base/base/entity/BaseResultEntity;->data:Ljava/lang/Object;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/powervision/base/base/entity/BaseResultEntity;->msg:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/powervision/base/base/entity/BaseResultEntity;->status:I

    return-void
.end method
