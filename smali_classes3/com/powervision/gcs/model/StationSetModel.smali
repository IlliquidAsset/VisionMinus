.class public Lcom/powervision/gcs/model/StationSetModel;
.super Ljava/lang/Object;
.source "StationSetModel.java"


# instance fields
.field private isShowEdit:Z

.field private mVFValue:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/powervision/gcs/model/StationSetModel;->name:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/powervision/gcs/model/StationSetModel;->mVFValue:Ljava/lang/String;

    .line 12
    iput-boolean p3, p0, Lcom/powervision/gcs/model/StationSetModel;->isShowEdit:Z

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/powervision/gcs/model/StationSetModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getmVFValue()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/powervision/gcs/model/StationSetModel;->mVFValue:Ljava/lang/String;

    return-object v0
.end method

.method public isShowEdit()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/powervision/gcs/model/StationSetModel;->isShowEdit:Z

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/powervision/gcs/model/StationSetModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setShowEdit(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/powervision/gcs/model/StationSetModel;->isShowEdit:Z

    return-void
.end method

.method public setmVFValue(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/powervision/gcs/model/StationSetModel;->mVFValue:Ljava/lang/String;

    return-void
.end method
