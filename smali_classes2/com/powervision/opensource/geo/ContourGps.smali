.class public Lcom/powervision/opensource/geo/ContourGps;
.super Ljava/lang/Object;
.source "ContourGps.java"


# instance fields
.field public area:D

.field public data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/opensource/geo/PointGps;",
            ">;"
        }
    .end annotation
.end field

.field public num:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/opensource/geo/ContourGps;->data:Ljava/util/ArrayList;

    return-void
.end method
