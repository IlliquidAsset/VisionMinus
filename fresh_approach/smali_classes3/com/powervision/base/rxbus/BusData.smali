.class public Lcom/powervision/base/rxbus/BusData;
.super Ljava/lang/Object;
.source "BusData.java"


# instance fields
.field private mId:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/powervision/base/rxbus/BusData;->mId:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/powervision/base/rxbus/BusData;->mStatus:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/powervision/base/rxbus/BusData;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/powervision/base/rxbus/BusData;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/powervision/base/rxbus/BusData;->mId:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/powervision/base/rxbus/BusData;->mStatus:Ljava/lang/String;

    return-void
.end method
