.class public Lcom/powervision/gcs/utils/FileTimeCompare;
.super Ljava/lang/Object;
.source "FileTimeCompare.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/powervision/gcs/model/History;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/powervision/gcs/model/History;Lcom/powervision/gcs/model/History;)I
    .locals 2

    .line 17
    invoke-virtual {p2}, Lcom/powervision/gcs/model/History;->getModifytime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/powervision/gcs/model/History;->getModifytime()J

    move-result-wide p1

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 14
    check-cast p1, Lcom/powervision/gcs/model/History;

    check-cast p2, Lcom/powervision/gcs/model/History;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/utils/FileTimeCompare;->compare(Lcom/powervision/gcs/model/History;Lcom/powervision/gcs/model/History;)I

    move-result p1

    return p1
.end method
