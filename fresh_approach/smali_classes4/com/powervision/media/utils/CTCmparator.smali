.class public Lcom/powervision/media/utils/CTCmparator;
.super Ljava/lang/Object;
.source "CTCmparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/powervision/base/model/MediaModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/powervision/base/model/MediaModel;Lcom/powervision/base/model/MediaModel;)I
    .locals 0

    .line 14
    invoke-virtual {p2}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lcom/powervision/base/model/MediaModel;

    check-cast p2, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/media/utils/CTCmparator;->compare(Lcom/powervision/base/model/MediaModel;Lcom/powervision/base/model/MediaModel;)I

    move-result p1

    return p1
.end method
