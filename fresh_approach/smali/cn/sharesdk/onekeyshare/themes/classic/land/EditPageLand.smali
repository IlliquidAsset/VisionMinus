.class public Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;
.super Lcn/sharesdk/onekeyshare/themes/classic/EditPage;
.source "EditPageLand.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Ljava/lang/Runnable;


# static fields
.field private static final DESIGN_BOTTOM_HEIGHT:I = 0x4b

.field private static final DESIGN_LEFT_PADDING:I = 0x28

.field private static final DESIGN_REMOVE_THUMB_HEIGHT_L:I = 0x3c

.field private static final DESIGN_SCREEN_WIDTH:I = 0x2d0

.field private static final DESIGN_THUMB_HEIGHT_L:I = 0x118

.field private static final DESIGN_TITLE_HEIGHT_L:I = 0x46


# direct methods
.method public constructor <init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V

    return-void
.end method

.method static synthetic access$002(Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 52
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->thumb:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private initBody(Landroid/widget/RelativeLayout;F)V
    .locals 6

    .line 145
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->svContent:Landroid/widget/ScrollView;

    .line 146
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->svContent:Landroid/widget/ScrollView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 150
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->svContent:Landroid/widget/ScrollView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->etContent:Landroid/widget/EditText;

    const/high16 v1, 0x42200000    # 40.0f

    mul-float v1, v1, p2

    float-to-int v1, v1

    .line 154
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->etContent:Landroid/widget/EditText;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 155
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->etContent:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->etContent:Landroid/widget/EditText;

    const v4, -0xc4c4c5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 157
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->etContent:Landroid/widget/EditText;

    const/4 v4, 0x2

    const/high16 v5, 0x41a80000    # 21.0f

    invoke-virtual {v2, v4, v5}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 158
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->etContent:Landroid/widget/EditText;

    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->sp:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 159
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 160
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 161
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->etContent:Landroid/widget/EditText;

    invoke-virtual {p1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->etContent:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 164
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->rlThumb:Landroid/widget/RelativeLayout;

    .line 165
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->rlThumb:Landroid/widget/RelativeLayout;

    const v2, -0xcececf

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const/high16 v0, 0x438c0000    # 280.0f

    mul-float v0, v0, p2

    float-to-int v0, v0

    const/high16 v2, 0x42700000    # 60.0f

    mul-float v2, v2, p2

    float-to-int v2, v2

    .line 168
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 169
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 170
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->rlThumb:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    new-instance p1, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand$1;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->activity:Landroid/app/Activity;

    invoke-direct {p1, p0, v1}, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand$1;-><init>(Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;Landroid/content/Context;)V

    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->aivThumb:Lcom/mob/tools/gui/AsyncImageView;

    .line 178
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->aivThumb:Lcom/mob/tools/gui/AsyncImageView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/mob/tools/gui/AsyncImageView;->setScaleToCropCenter(Z)V

    .line 179
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 180
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->rlThumb:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->aivThumb:Lcom/mob/tools/gui/AsyncImageView;

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->aivThumb:Lcom/mob/tools/gui/AsyncImageView;

    invoke-virtual {p1, p0}, Lcom/mob/tools/gui/AsyncImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->aivThumb:Lcom/mob/tools/gui/AsyncImageView;

    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->initThumb(Lcom/mob/tools/gui/AsyncImageView;)V

    .line 184
    new-instance p1, Lcn/sharesdk/onekeyshare/themes/classic/XView;

    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcn/sharesdk/onekeyshare/themes/classic/XView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->xvRemove:Lcn/sharesdk/onekeyshare/themes/classic/XView;

    .line 185
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->xvRemove:Lcn/sharesdk/onekeyshare/themes/classic/XView;

    invoke-virtual {p1, p2}, Lcn/sharesdk/onekeyshare/themes/classic/XView;->setRatio(F)V

    .line 186
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0xa

    .line 187
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p2, 0xb

    .line 188
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 189
    iget-object p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->rlThumb:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->xvRemove:Lcn/sharesdk/onekeyshare/themes/classic/XView;

    invoke-virtual {p2, v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->xvRemove:Lcn/sharesdk/onekeyshare/themes/classic/XView;

    invoke-virtual {p1, p0}, Lcn/sharesdk/onekeyshare/themes/classic/XView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initBottom(Landroid/widget/LinearLayout;F)V
    .locals 9

    .line 194
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 195
    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v2, -0x1

    .line 196
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/high16 v3, 0x42960000    # 75.0f

    mul-float v3, v3, p2

    float-to-int v3, v3

    .line 198
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 199
    invoke-virtual {p1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->tvAt:Landroid/widget/TextView;

    .line 202
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->tvAt:Landroid/widget/TextView;

    const v4, -0xc4c4c5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->tvAt:Landroid/widget/TextView;

    const/4 v5, 0x2

    const/high16 v6, 0x41a80000    # 21.0f

    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 204
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->tvAt:Landroid/widget/TextView;

    const/16 v6, 0x50

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 205
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->tvAt:Landroid/widget/TextView;

    const-string v6, "@"

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x42200000    # 40.0f

    mul-float v3, v3, p2

    float-to-int v3, v3

    .line 207
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->tvAt:Landroid/widget/TextView;

    invoke-virtual {v6, v3, v1, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 208
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 209
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->tvAt:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->tvAt:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->platform:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v6}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->isShowAtUserLayout(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 212
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->tvAt:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 214
    :cond_0
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->tvAt:Landroid/widget/TextView;

    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    :goto_0
    new-instance v6, Landroid/widget/TextView;

    iget-object v8, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->activity:Landroid/app/Activity;

    invoke-direct {v6, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->tvTextCouter:Landroid/widget/TextView;

    .line 218
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->tvTextCouter:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->tvTextCouter:Landroid/widget/TextView;

    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 220
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->tvTextCouter:Landroid/widget/TextView;

    const/16 v5, 0x55

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 221
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->etContent:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {p0, v4, v1, v1, v1}, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 222
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->tvTextCouter:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v1, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 223
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 224
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 225
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->tvTextCouter:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v1, -0x333334

    .line 228
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    cmpl-float v1, p2, v3

    if-lez v1, :cond_1

    float-to-int p2, p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    .line 230
    :goto_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 231
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initShadow(Landroid/widget/LinearLayout;F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    float-to-int p2, p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 236
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 238
    new-instance p2, Landroid/view/View;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->activity:Landroid/app/Activity;

    invoke-direct {p2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x29000000

    .line 239
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 240
    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    new-instance p2, Landroid/view/View;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->activity:Landroid/app/Activity;

    invoke-direct {p2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x14000000

    .line 243
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 244
    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    new-instance p2, Landroid/view/View;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->activity:Landroid/app/Activity;

    invoke-direct {p2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x7000000

    .line 247
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 248
    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initThumb(Lcom/mob/tools/gui/AsyncImageView;)V
    .locals 6

    .line 252
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->sp:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->sp:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    .line 254
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->sp:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v2

    .line 257
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->rlThumb:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 258
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    :try_start_0
    invoke-static {v1}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 262
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 267
    iput-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->thumb:Landroid/graphics/Bitmap;

    .line 268
    invoke-virtual {p1, v3}, Lcom/mob/tools/gui/AsyncImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 269
    array-length v5, v2

    if-lez v5, :cond_2

    .line 270
    aget-object v5, v2, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/io/File;

    aget-object v2, v2, v4

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 272
    :try_start_1
    invoke-static {v1}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 274
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 280
    iput-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->thumb:Landroid/graphics/Bitmap;

    .line 281
    invoke-virtual {p1, v3}, Lcom/mob/tools/gui/AsyncImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_3
    if-nez v3, :cond_4

    .line 282
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 283
    invoke-virtual {p1, v0, v4}, Lcom/mob/tools/gui/AsyncImageView;->execute(Ljava/lang/String;I)V

    goto :goto_2

    .line 285
    :cond_4
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->rlThumb:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private initTitle(Landroid/widget/RelativeLayout;F)V
    .locals 9

    .line 103
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->tvCancel:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->tvCancel:Landroid/widget/TextView;

    const v1, -0xc4c4c5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->tvCancel:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 106
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->tvCancel:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 107
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->activity:Landroid/app/Activity;

    const-string v5, "ssdk_oks_cancel"

    invoke-static {v0, v5}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 109
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const/high16 v0, 0x42200000    # 40.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 112
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->tvCancel:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v0, p2, v5, p2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 113
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v0, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 114
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {p1, v8, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    new-instance v0, Landroid/widget/TextView;

    iget-object v8, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->activity:Landroid/app/Activity;

    invoke-direct {v0, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 118
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41b00000    # 22.0f

    .line 119
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 120
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 121
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->activity:Landroid/app/Activity;

    const-string v8, "ssdk_oks_multi_share"

    invoke-static {v1, v8}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 123
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 125
    :cond_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xd

    .line 126
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 127
    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->tvShare:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->tvShare:Landroid/widget/TextView;

    const v1, -0x92ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->tvShare:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 132
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->tvShare:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 133
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->activity:Landroid/app/Activity;

    const-string v1, "ssdk_oks_share"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 135
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->tvShare:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 137
    :cond_2
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->tvShare:Landroid/widget/TextView;

    invoke-virtual {v0, p2, v5, p2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 138
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    .line 139
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 140
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->tvShare:Landroid/widget/TextView;

    invoke-virtual {p1, v0, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->tvShare:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 7

    .line 65
    invoke-super {p0}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->onCreate()V

    .line 67
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x44340000    # 720.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    .line 70
    iput v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->maxBodyHeight:I

    .line 72
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->llPage:Landroid/widget/LinearLayout;

    .line 73
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->llPage:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 74
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->llPage:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 76
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->activity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->rlTitle:Landroid/widget/RelativeLayout;

    .line 77
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->rlTitle:Landroid/widget/RelativeLayout;

    const v3, -0x191614

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const/high16 v1, 0x428c0000    # 70.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    .line 80
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 81
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->llPage:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->rlTitle:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->rlTitle:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v0}, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->initTitle(Landroid/widget/RelativeLayout;F)V

    .line 84
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->activity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 86
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 87
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->llPage:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    invoke-direct {p0, v1, v0}, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->initBody(Landroid/widget/RelativeLayout;F)V

    .line 90
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->activity:Landroid/app/Activity;

    invoke-direct {v3, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 91
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 92
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-direct {p0, v3, v0}, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->initShadow(Landroid/widget/LinearLayout;F)V

    .line 95
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->activity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->llBottom:Landroid/widget/LinearLayout;

    .line 96
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->llBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 97
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 98
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->llPage:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->llBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->llBottom:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v0}, Lcn/sharesdk/onekeyshare/themes/classic/land/EditPageLand;->initBottom(Landroid/widget/LinearLayout;F)V

    return-void
.end method
