.class public Lcom/powervision/gcs/model/ImageModel;
.super Ljava/lang/Object;
.source "ImageModel.java"


# instance fields
.field private img:Landroid/widget/ImageView;

.field private position:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImg()Landroid/widget/ImageView;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/powervision/gcs/model/ImageModel;->img:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/powervision/gcs/model/ImageModel;->position:I

    return v0
.end method

.method public setImg(Landroid/widget/ImageView;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/powervision/gcs/model/ImageModel;->img:Landroid/widget/ImageView;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/powervision/gcs/model/ImageModel;->position:I

    return-void
.end method
