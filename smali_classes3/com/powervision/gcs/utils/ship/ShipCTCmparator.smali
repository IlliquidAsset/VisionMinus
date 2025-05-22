.class public Lcom/powervision/gcs/utils/ship/ShipCTCmparator;
.super Ljava/lang/Object;
.source "ShipCTCmparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/powervision/gcs/model/ship/ShipMediaImageModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)I
    .locals 2

    .line 11
    invoke-virtual {p2}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->getCreattime()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/16 v1, 0x9

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->getCreattime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 8
    check-cast p1, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    check-cast p2, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/utils/ship/ShipCTCmparator;->compare(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)I

    move-result p1

    return p1
.end method
