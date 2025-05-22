.class public Lcom/powervision/gcs/view/ship/FishPositionView;
.super Landroid/widget/RelativeLayout;
.source "FishPositionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/ship/FishPositionView$OnFishPositionListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mImageClose:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1008
    .end annotation
.end field

.field mImageFish:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xdbf
    .end annotation
.end field

.field mTextCollect:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x10d8
    .end annotation
.end field

.field mTextLatlng:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x10f1
    .end annotation
.end field

.field mTextTag:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1106
    .end annotation
.end field

.field private onFishPositionListener:Lcom/powervision/gcs/view/ship/FishPositionView$OnFishPositionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/ship/FishPositionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/gcs/view/ship/FishPositionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    sget p2, Lcom/powervision/gcs/R$layout;->layout_fish_position:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 55
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/FishPositionView;->mContext:Landroid/content/Context;

    .line 56
    invoke-static {p2}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 57
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/FishPositionView;->init()V

    return-void
.end method

.method private colse()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/FishPositionView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    check-cast v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 114
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private init()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/FishPositionView;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/FishPositionView;->mTextTag:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x1008,
            0x10e2,
            0x10d8
        }
    .end annotation

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 94
    sget v0, Lcom/powervision/gcs/R$id;->ship_function_list_close:I

    if-ne p1, v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/FishPositionView;->colse()V

    goto :goto_0

    .line 97
    :cond_0
    sget v0, Lcom/powervision/gcs/R$id;->text_fish:I

    if-ne p1, v0, :cond_1

    .line 98
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/FishPositionView;->colse()V

    .line 99
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/FishPositionView;->onFishPositionListener:Lcom/powervision/gcs/view/ship/FishPositionView$OnFishPositionListener;

    if-eqz p1, :cond_2

    .line 100
    invoke-interface {p1}, Lcom/powervision/gcs/view/ship/FishPositionView$OnFishPositionListener;->toFish()V

    goto :goto_0

    .line 103
    :cond_1
    sget v0, Lcom/powervision/gcs/R$id;->text_collect:I

    if-ne p1, v0, :cond_2

    .line 104
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/FishPositionView;->colse()V

    .line 105
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/FishPositionView;->onFishPositionListener:Lcom/powervision/gcs/view/ship/FishPositionView$OnFishPositionListener;

    if-eqz p1, :cond_2

    .line 106
    invoke-interface {p1}, Lcom/powervision/gcs/view/ship/FishPositionView$OnFishPositionListener;->collect()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setCollectVisibility(I)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/FishPositionView;->mTextCollect:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setImageFile(Ljava/lang/String;)V
    .locals 1

    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/FishPositionView;->mImageFish:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnFishPositionListener(Lcom/powervision/gcs/view/ship/FishPositionView$OnFishPositionListener;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/FishPositionView;->onFishPositionListener:Lcom/powervision/gcs/view/ship/FishPositionView$OnFishPositionListener;

    return-void
.end method

.method public setTextLatlng(Lcom/powervision/base/nationmap/model/NationLatLng;)V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/FishPositionView;->mTextLatlng:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/powervision/gcs/view/ship/FishPositionView;->mContext:Landroid/content/Context;

    sget v3, Lcom/powervision/gcs/R$string;->PVW4_Map_35:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/powervision/base/nationmap/model/NationLatLng;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/powervision/base/nationmap/model/NationLatLng;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextTag(Ljava/lang/String;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/FishPositionView;->mTextTag:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
