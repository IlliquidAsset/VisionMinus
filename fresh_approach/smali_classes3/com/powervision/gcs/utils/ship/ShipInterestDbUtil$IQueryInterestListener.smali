.class public interface abstract Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil$IQueryInterestListener;
.super Ljava/lang/Object;
.source "ShipInterestDbUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IQueryInterestListener"
.end annotation


# virtual methods
.method public abstract onAddInterestFailed()V
.end method

.method public abstract onAddInterestSuccess(Ljava/lang/Long;)V
.end method

.method public abstract onQueryByType(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/gcs/model/ship/ShipInterestModel;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/gcs/model/ship/ShipInterestModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onQueryInterest(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/gcs/model/ship/ShipInterestModel;",
            ">;)V"
        }
    .end annotation
.end method
