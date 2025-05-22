.class Lcom/powervision/login/presenter/impl/CreateLoginPresenter$4;
.super Ljava/lang/Object;
.source "CreateLoginPresenter.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/login/presenter/impl/CreateLoginPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/login/presenter/impl/CreateLoginPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/login/presenter/impl/CreateLoginPresenter;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter$4;->this$0:Lcom/powervision/login/presenter/impl/CreateLoginPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 7

    const-string v0, "CreateLoginPresenter"

    const-string v1, "onLocationChanged: "

    .line 217
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter$4;->this$0:Lcom/powervision/login/presenter/impl/CreateLoginPresenter;

    invoke-static {v0}, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->access$700(Lcom/powervision/login/presenter/impl/CreateLoginPresenter;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter$4;->this$0:Lcom/powervision/login/presenter/impl/CreateLoginPresenter;

    invoke-static {v1}, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->access$600(Lcom/powervision/login/presenter/impl/CreateLoginPresenter;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    if-eqz p1, :cond_0

    .line 220
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 221
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 222
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "BP_PHONE_LATITUDE"

    invoke-virtual {p1, v6, v4}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BP_PHONE_LONGITUDE"

    invoke-virtual {p1, v5, v4}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    iget-object p1, p0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter$4;->this$0:Lcom/powervision/login/presenter/impl/CreateLoginPresenter;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->getCountryCode(DD)V

    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    const-string p1, "CreateLoginPresenter"

    const-string v0, "onProviderDisabled: "

    .line 240
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    const-string p1, "CreateLoginPresenter"

    const-string v0, "onProviderEnabled: "

    .line 235
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    const-string p1, "CreateLoginPresenter"

    const-string p2, "onStatusChanged: "

    .line 230
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
