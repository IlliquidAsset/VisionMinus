.class public interface abstract Lcn/powervision/upgrade/presenter/impl/IFirmwareDownloadPresenter;
.super Ljava/lang/Object;
.source "IFirmwareDownloadPresenter.java"


# virtual methods
.method public abstract downFirmware(Ljava/util/List;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/powervision/upgrade/model/entity/FirmwareInfo;",
            ">;J)V"
        }
    .end annotation
.end method

.method public abstract downFirmware(Ljava/util/List;Ljava/util/List;Ljava/util/List;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/powervision/upgrade/model/entity/FirmwareInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcn/powervision/upgrade/model/entity/FirmwareInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcn/powervision/upgrade/model/entity/FirmwareInfo;",
            ">;J)V"
        }
    .end annotation
.end method

.method public abstract setUpConfigList()V
.end method
