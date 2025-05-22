.class public Lcom/powervision/condition/widget/NationPolygon;
.super Ljava/lang/Object;
.source "NationPolygon.java"

# interfaces
.implements Lcom/powervision/base/nationmap/interfaces/INationPolygon;


# instance fields
.field private polygon:Lcom/google/android/gms/maps/model/Polygon;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/model/Polygon;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/powervision/condition/widget/NationPolygon;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    return-void
.end method


# virtual methods
.method public remove()V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/powervision/condition/widget/NationPolygon;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polygon;->remove()V

    return-void
.end method
