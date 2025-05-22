.class public Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;
.super Landroid/widget/LinearLayout;
.source "FriendListItem.java"


# static fields
.field private static final DESIGN_AVATAR_PADDING:I = 0x18

.field private static final DESIGN_AVATAR_WIDTH:I = 0x40

.field private static final DESIGN_ITEM_HEIGHT:I = 0x60

.field private static final DESIGN_ITEM_PADDING:I = 0x14


# instance fields
.field private aivIcon:Lcom/mob/tools/gui/AsyncImageView;

.field private bmChd:Landroid/graphics/Bitmap;

.field private bmUnch:Landroid/graphics/Bitmap;

.field private ivCheck:Landroid/widget/ImageView;

.field private tvName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .locals 5

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float v0, v0, p2

    float-to-int v0, v0

    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0, v0, v1, v0, v1}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->setPadding(IIII)V

    const/high16 v0, 0x42c00000    # 96.0f

    mul-float v0, v0, p2

    float-to-int v0, v0

    .line 69
    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->setMinimumHeight(I)V

    const/4 v0, -0x1

    .line 70
    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->setBackgroundColor(I)V

    .line 72
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->ivCheck:Landroid/widget/ImageView;

    .line 73
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x10

    .line 75
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 76
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->ivCheck:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    new-instance v0, Lcom/mob/tools/gui/AsyncImageView;

    invoke-direct {v0, p1}, Lcom/mob/tools/gui/AsyncImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->aivIcon:Lcom/mob/tools/gui/AsyncImageView;

    const/high16 v0, 0x42800000    # 64.0f

    mul-float v0, v0, p2

    float-to-int v0, v0

    .line 80
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 81
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v0, 0x41c00000    # 24.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 83
    invoke-virtual {v4, p2, v1, p2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 84
    iget-object p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->aivIcon:Lcom/mob/tools/gui/AsyncImageView;

    invoke-virtual {p0, p2, v4}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->tvName:Landroid/widget/TextView;

    const/high16 v0, -0x1000000

    .line 87
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    iget-object p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->tvName:Landroid/widget/TextView;

    const/4 v0, 0x2

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 89
    iget-object p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->tvName:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->setSingleLine()V

    .line 90
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 91
    iput v3, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 92
    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 93
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->tvName:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p2}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string p2, "ssdk_oks_classic_check_checked"

    .line 95
    invoke-static {p1, p2}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_0

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->bmChd:Landroid/graphics/Bitmap;

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "ssdk_oks_classic_check_default"

    invoke-static {p2, v0}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_1

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->bmUnch:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method


# virtual methods
.method public update(Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;Z)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->tvName:Landroid/widget/TextView;

    iget-object v1, p1, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->screenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->ivCheck:Landroid/widget/ImageView;

    iget-boolean v1, p1, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->checked:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->bmChd:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->bmUnch:Landroid/graphics/Bitmap;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->aivIcon:Lcom/mob/tools/gui/AsyncImageView;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 110
    iget-object p1, p1, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->icon:Ljava/lang/String;

    invoke-static {p1}, Lcom/mob/tools/gui/BitmapProcessor;->getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_1

    .line 112
    iget-object p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->aivIcon:Lcom/mob/tools/gui/AsyncImageView;

    invoke-virtual {p2, p1}, Lcom/mob/tools/gui/AsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 114
    :cond_1
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListItem;->aivIcon:Lcom/mob/tools/gui/AsyncImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v1}, Lcom/mob/tools/gui/AsyncImageView;->execute(Ljava/lang/String;I)V

    goto :goto_1

    .line 117
    :cond_2
    iget-object p1, p1, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->icon:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/gui/AsyncImageView;->execute(Ljava/lang/String;I)V

    :cond_3
    :goto_1
    return-void
.end method
