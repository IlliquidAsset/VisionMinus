.class public Lcom/powervision/gcs/model/CheckModel;
.super Ljava/lang/Object;
.source "CheckModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/model/CheckModel$CheckStatus;
    }
.end annotation


# instance fields
.field private deviceIcon:Landroid/graphics/drawable/Drawable;

.field private deviceName:Ljava/lang/String;

.field private status:Lcom/powervision/gcs/model/CheckModel$CheckStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/powervision/gcs/model/CheckModel;->deviceIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/powervision/gcs/model/CheckModel;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/powervision/gcs/model/CheckModel$CheckStatus;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/powervision/gcs/model/CheckModel;->status:Lcom/powervision/gcs/model/CheckModel$CheckStatus;

    return-object v0
.end method

.method public setDeviceIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/powervision/gcs/model/CheckModel;->deviceIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/powervision/gcs/model/CheckModel;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Lcom/powervision/gcs/model/CheckModel$CheckStatus;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/powervision/gcs/model/CheckModel;->status:Lcom/powervision/gcs/model/CheckModel$CheckStatus;

    return-void
.end method
