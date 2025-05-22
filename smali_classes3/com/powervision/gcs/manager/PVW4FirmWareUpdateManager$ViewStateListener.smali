.class public interface abstract Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;
.super Ljava/lang/Object;
.source "PVW4FirmWareUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ViewStateListener"
.end annotation


# virtual methods
.method public abstract getMainBodyVersionSucceed(Ljava/lang/String;)V
.end method

.method public abstract getRemoteDL01VersionSucceed(Ljava/lang/String;)V
.end method

.method public abstract getRemoteMCUVersionSucceed(Ljava/lang/String;)V
.end method

.method public abstract getRemoteOnlineVersionSucceed(Lcom/powervision/gcs/manager/FirmwareQueryModel;)V
.end method

.method public abstract getRemoteUpdateSucceed()V
.end method

.method public abstract getRemoteWifiVersionSucceed(Ljava/lang/String;)V
.end method

.method public abstract getVEHOnlineVersionSucceed(Lcom/powervision/gcs/manager/FirmwareQueryModel;)V
.end method

.method public abstract hideBodyDownLoad()V
.end method

.method public abstract hideBodyUpdate()V
.end method

.method public abstract hideContent()V
.end method

.method public abstract hideDl01Loading()V
.end method

.method public abstract hideDl01Update()V
.end method

.method public abstract hideMainLoading()V
.end method

.method public abstract hideMcuLoading()V
.end method

.method public abstract hideMcuUpdate(I)V
.end method

.method public abstract hideRemoteDownLoad()V
.end method

.method public abstract hideWifiLoading()V
.end method

.method public abstract hideWifiUpdate()V
.end method

.method public abstract showBodyDownLoad()V
.end method

.method public abstract showBodyUpdate()V
.end method

.method public abstract showDl01Loading()V
.end method

.method public abstract showDl01Update()V
.end method

.method public abstract showErrorDialog(II)V
.end method

.method public abstract showMainLoading()V
.end method

.method public abstract showMcuLoading()V
.end method

.method public abstract showMcuUpdate()V
.end method

.method public abstract showRemoteDownLoad(Z)V
.end method

.method public abstract showWifiLoading()V
.end method

.method public abstract showWifiUpdate()V
.end method

.method public abstract storeTheFiles(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation
.end method
