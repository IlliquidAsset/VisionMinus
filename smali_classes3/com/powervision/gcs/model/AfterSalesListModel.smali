.class public Lcom/powervision/gcs/model/AfterSalesListModel;
.super Ljava/lang/Object;
.source "AfterSalesListModel.java"


# instance fields
.field private id:I

.field private orderId:Ljava/lang/String;

.field private singleId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/powervision/gcs/model/AfterSalesListModel;->id:I

    return v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/powervision/gcs/model/AfterSalesListModel;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getSingleId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/powervision/gcs/model/AfterSalesListModel;->singleId:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/powervision/gcs/model/AfterSalesListModel;->id:I

    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/powervision/gcs/model/AfterSalesListModel;->orderId:Ljava/lang/String;

    return-void
.end method

.method public setSingleId(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/powervision/gcs/model/AfterSalesListModel;->singleId:Ljava/lang/String;

    return-void
.end method
