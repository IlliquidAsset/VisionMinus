.class public interface abstract Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMarkerTypeClickListener;
.super Ljava/lang/Object;
.source "OnNationMapListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/nationmap/listener/OnNationMapListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMarkerTypeClickListener"
.end annotation


# virtual methods
.method public abstract onFishBubbleClick(Lcom/powervision/base/nationmap/model/NationLatLng;)V
.end method

.method public abstract onFishMarkerClick(Lcom/powervision/base/nationmap/model/NationLatLng;)V
.end method

.method public abstract onInterestMarkerClick(Lcom/powervision/base/nationmap/model/NationLatLng;)V
.end method

.method public abstract onMarkerClick(Lcom/powervision/base/nationmap/interfaces/INationMarker;)V
.end method
