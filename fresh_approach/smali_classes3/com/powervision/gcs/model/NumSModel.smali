.class public Lcom/powervision/gcs/model/NumSModel;
.super Ljava/lang/Object;
.source "NumSModel.java"


# instance fields
.field private addtime:Ljava/lang/String;

.field private id:I

.field private productname:Ljava/lang/String;

.field private sortindex:I

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddtime()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/powervision/gcs/model/NumSModel;->addtime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/powervision/gcs/model/NumSModel;->id:I

    return v0
.end method

.method public getProductname()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/powervision/gcs/model/NumSModel;->productname:Ljava/lang/String;

    return-object v0
.end method

.method public getSortindex()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/powervision/gcs/model/NumSModel;->sortindex:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/powervision/gcs/model/NumSModel;->status:I

    return v0
.end method

.method public setAddtime(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/powervision/gcs/model/NumSModel;->addtime:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/powervision/gcs/model/NumSModel;->id:I

    return-void
.end method

.method public setProductname(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/powervision/gcs/model/NumSModel;->productname:Ljava/lang/String;

    return-void
.end method

.method public setSortindex(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/powervision/gcs/model/NumSModel;->sortindex:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/powervision/gcs/model/NumSModel;->status:I

    return-void
.end method
