.class public Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;
.super Ljava/lang/Object;
.source "ShipMediaImageMixModel.java"


# static fields
.field public static final TYPE_EMPTY:I = 0x2

.field public static final TYPE_FOOTER:I = 0x1

.field public static final TYPE_LOADING:I = 0x9

.field public static final TYPE_MEDIA_1:I = 0x4

.field public static final TYPE_MEDIA_2:I = 0x5

.field public static final TYPE_MEDIA_3:I = 0x6

.field public static final TYPE_MEDIA_4:I = 0x7

.field public static final TYPE_NONE:I = 0x8

.field public static final TYPE_TITLE:I = 0x3


# instance fields
.field public model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

.field public time:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isHeader()Z
    .locals 2

    .line 59
    iget v0, p0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setMedia1(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    const/4 p1, 0x4

    .line 35
    iput p1, p0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->type:I

    return-void
.end method

.method public setMedia2(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    const/4 p1, 0x5

    .line 40
    iput p1, p0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->type:I

    return-void
.end method

.method public setMedia3(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    const/4 p1, 0x6

    .line 45
    iput p1, p0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->type:I

    return-void
.end method

.method public setMedia4(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    const/4 p1, 0x7

    .line 50
    iput p1, p0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->type:I

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->time:Ljava/lang/String;

    const/4 p1, 0x3

    .line 30
    iput p1, p0, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->type:I

    return-void
.end method
