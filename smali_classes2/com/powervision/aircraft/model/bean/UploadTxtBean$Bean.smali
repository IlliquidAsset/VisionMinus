.class public Lcom/powervision/aircraft/model/bean/UploadTxtBean$Bean;
.super Ljava/lang/Object;
.source "UploadTxtBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/model/bean/UploadTxtBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bean"
.end annotation


# instance fields
.field public airspace_udid:Ljava/lang/String;

.field public coordinates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public last_updated:Ljava/lang/String;

.field public lat:Ljava/lang/Double;

.field public lon:Ljava/lang/Double;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
