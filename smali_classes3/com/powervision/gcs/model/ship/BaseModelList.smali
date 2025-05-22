.class public Lcom/powervision/gcs/model/ship/BaseModelList;
.super Ljava/lang/Object;
.source "BaseModelList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private code:I

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private info:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/powervision/gcs/model/ship/BaseModelList;->code:I

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/BaseModelList;->data:Ljava/util/List;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/BaseModelList;->info:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/powervision/gcs/model/ship/BaseModelList;->code:I

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/BaseModelList;->data:Ljava/util/List;

    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/BaseModelList;->info:Ljava/lang/String;

    return-void
.end method
