.class public Lcom/powervision/gcs/model/ship/BaseModel;
.super Ljava/lang/Object;
.source "BaseModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private code:I

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private info:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x3e8

    .line 10
    iput v0, p0, Lcom/powervision/gcs/model/ship/BaseModel;->code:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/powervision/gcs/model/ship/BaseModel;->code:I

    return v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/BaseModel;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/BaseModel;->info:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/powervision/gcs/model/ship/BaseModel;->code:I

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/BaseModel;->data:Ljava/lang/Object;

    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/BaseModel;->info:Ljava/lang/String;

    return-void
.end method
