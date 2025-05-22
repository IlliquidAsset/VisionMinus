.class public Lcom/powervision/gcs/model/CloudSetModel;
.super Ljava/lang/Object;
.source "CloudSetModel.java"


# instance fields
.field private mode:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/powervision/gcs/model/CloudSetModel;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMode()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/powervision/gcs/model/CloudSetModel;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/powervision/gcs/model/CloudSetModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/powervision/gcs/model/CloudSetModel;->mode:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/powervision/gcs/model/CloudSetModel;->name:Ljava/lang/String;

    return-void
.end method
