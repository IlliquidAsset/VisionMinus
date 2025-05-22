.class public Lcom/powervision/media/ui/adapter/BaseMediaListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BaseMediaListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field checkBox:Lcom/powervision/media/widgets/CheckedImageView;

.field mImageSelect:Landroid/widget/ImageView;

.field mImageView:Landroid/widget/ImageView;

.field mTextLength:Landroid/widget/TextView;

.field time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
