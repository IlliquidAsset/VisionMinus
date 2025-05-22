.class public Lcom/powervision/gcs/model/ControlSetModel;
.super Ljava/lang/Object;
.source "ControlSetModel.java"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/powervision/gcs/model/ControlSetModel;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/powervision/gcs/model/ControlSetModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/powervision/gcs/model/ControlSetModel;->name:Ljava/lang/String;

    return-void
.end method
