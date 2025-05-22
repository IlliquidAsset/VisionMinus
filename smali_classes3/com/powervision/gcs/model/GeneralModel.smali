.class public Lcom/powervision/gcs/model/GeneralModel;
.super Ljava/lang/Object;
.source "GeneralModel.java"


# instance fields
.field private isShowArrow:Z

.field private isShowSwitch:Z

.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/powervision/gcs/model/GeneralModel;->name:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/powervision/gcs/model/GeneralModel;->value:Ljava/lang/String;

    .line 17
    iput-boolean p3, p0, Lcom/powervision/gcs/model/GeneralModel;->isShowSwitch:Z

    .line 18
    iput-boolean p4, p0, Lcom/powervision/gcs/model/GeneralModel;->isShowArrow:Z

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/powervision/gcs/model/GeneralModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/powervision/gcs/model/GeneralModel;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isShowArrow()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/powervision/gcs/model/GeneralModel;->isShowArrow:Z

    return v0
.end method

.method public isShowSwitch()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/powervision/gcs/model/GeneralModel;->isShowSwitch:Z

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/powervision/gcs/model/GeneralModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setShowArrow(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/powervision/gcs/model/GeneralModel;->isShowArrow:Z

    return-void
.end method

.method public setShowSwitch(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/powervision/gcs/model/GeneralModel;->isShowSwitch:Z

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/powervision/gcs/model/GeneralModel;->value:Ljava/lang/String;

    return-void
.end method
