.class public Lcom/powervision/media/utils/MediaScanner$ModifyTimeComparator;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/utils/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModifyTimeComparator"
.end annotation

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

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/powervision/base/model/MediaModel;Lcom/powervision/base/model/MediaModel;)I
    .locals 0

    .line 55
    invoke-virtual {p2}, Lcom/powervision/base/model/MediaModel;->getCreateTime()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getCreateTime()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 52
    check-cast p1, Lcom/powervision/base/model/MediaModel;

    check-cast p2, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/media/utils/MediaScanner$ModifyTimeComparator;->compare(Lcom/powervision/base/model/MediaModel;Lcom/powervision/base/model/MediaModel;)I

    move-result p1

    return p1
.end method
