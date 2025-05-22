.class public Lcom/powervision/gcs/model/TextAndLocation;
.super Ljava/lang/Object;
.source "TextAndLocation.java"


# instance fields
.field public location:F

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/powervision/gcs/model/TextAndLocation;->text:Ljava/lang/String;

    .line 12
    iput p2, p0, Lcom/powervision/gcs/model/TextAndLocation;->location:F

    return-void
.end method
