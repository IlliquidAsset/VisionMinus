.class public interface abstract Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$Presenter;
.super Ljava/lang/Object;
.source "ShipTopTask.java"

# interfaces
.implements Lcom/powervision/gcs/base/IPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract checkFirmwareUpdate()V
.end method

.method public abstract registerSignalListener(Landroidx/fragment/app/FragmentActivity;I)V
.end method

.method public abstract unregisterSignalListener()V
.end method
