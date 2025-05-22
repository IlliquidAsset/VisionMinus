.class public Lcom/powervision/gcs/model/OrderProcessModel;
.super Ljava/lang/Object;
.source "OrderProcessModel.java"


# instance fields
.field private addTime:Ljava/lang/String;

.field private desc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddTime()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/powervision/gcs/model/OrderProcessModel;->addTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/powervision/gcs/model/OrderProcessModel;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public setAddTime(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/powervision/gcs/model/OrderProcessModel;->addTime:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/powervision/gcs/model/OrderProcessModel;->desc:Ljava/lang/String;

    return-void
.end method
