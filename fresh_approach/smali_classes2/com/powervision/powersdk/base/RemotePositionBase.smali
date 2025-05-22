.class public Lcom/powervision/powersdk/base/RemotePositionBase;
.super Ljava/lang/Object;
.source "RemotePositionBase.java"

# interfaces
.implements Lcom/powervision/powersdk/callback/RemoteControlCallback$RemoteControlLocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/powersdk/base/RemotePositionBase$RemotePositionListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/powervision/powersdk/base/RemotePositionBase$RemotePositionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteControlLocation(Lcom/powervision/powersdk/param/RemoteControlLocationNotifyParam;)V
    .locals 0

    .line 20
    iget-object p1, p0, Lcom/powervision/powersdk/base/RemotePositionBase;->listener:Lcom/powervision/powersdk/base/RemotePositionBase$RemotePositionListener;

    if-eqz p1, :cond_0

    .line 21
    invoke-interface {p1}, Lcom/powervision/powersdk/base/RemotePositionBase$RemotePositionListener;->onRemotePosition()V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/powervision/powersdk/base/RemotePositionBase$RemotePositionListener;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/powervision/powersdk/base/RemotePositionBase;->listener:Lcom/powervision/powersdk/base/RemotePositionBase$RemotePositionListener;

    return-void
.end method
