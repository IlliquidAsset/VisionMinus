.class public Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;
.super Lcn/sharesdk/onekeyshare/themes/classic/EditPage;
.source "EditPagePort.java"


# static fields
.field private static final DESIGN_BOTTOM_HEIGHT:I = 0x4b

.field private static final DESIGN_LEFT_PADDING:I = 0x28

.field private static final DESIGN_REMOVE_THUMB_HEIGHT:I = 0x46

.field private static final DESIGN_SCREEN_HEIGHT:I = 0x500

.field private static final DESIGN_THUMB_HEIGHT:I = 0x12c

.field private static final DESIGN_TITLE_HEIGHT:I = 0x60


# direct methods
.method public constructor <init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V

    return-void
.end method

.method static synthetic access$002(Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 50
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->thumb:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private initBody(Landroid/widget/RelativeLayout;F)V
    .locals 7

    .line 142
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->svContent:Landroid/widget/ScrollView;

    .line 143
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->svContent:Landroid/widget/ScrollView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 146
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 147
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->svContent:Landroid/widget/ScrollView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    new-instance v1, Landroid/widget/EditText;

    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v1, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->etContent:Landroid/widget/EditText;

    const/high16 v1, 0x42200000    # 40.0f

    mul-float v1, v1, p2

    float-to-int v1, v1

    .line 151
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->etContent:Landroid/widget/EditText;

    invoke-virtual {v4, v1, v1, v1, v1}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 152
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->etContent:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->etContent:Landroid/widget/EditText;

    const v5, -0xc4c4c5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTextColor(I)V

    .line 154
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->etContent:Landroid/widget/EditText;

    const/4 v5, 0x2

    const/high16 v6, 0x41a80000    # 21.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 155
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->etContent:Landroid/widget/EditText;

    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->sp:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v5}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 157
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->etContent:Landroid/widget/EditText;

    invoke-virtual {p1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->etContent:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 160
    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->rlThumb:Landroid/widget/RelativeLayout;

    .line 161
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->rlThumb:Landroid/widget/RelativeLayout;

    const v3, -0xcececf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const/high16 v2, 0x43960000    # 300.0f

    mul-float v2, v2, p2

    float-to-int v2, v2

    const/high16 v3, 0x428c0000    # 70.0f

    mul-float v3, v3, p2

    float-to-int v3, v3

    .line 164
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 165
    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 166
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->rlThumb:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    new-instance p1, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort$1;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {p1, p0, v1}, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort$1;-><init>(Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;Landroid/content/Context;)V

    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->aivThumb:Lcom/mob/tools/gui/AsyncImageView;

    .line 174
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->aivThumb:Lcom/mob/tools/gui/AsyncImageView;

    invoke-virtual {p1, v0}, Lcom/mob/tools/gui/AsyncImageView;->setScaleToCropCenter(Z)V

    .line 175
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 176
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->rlThumb:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->aivThumb:Lcom/mob/tools/gui/AsyncImageView;

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->aivThumb:Lcom/mob/tools/gui/AsyncImageView;

    invoke-virtual {p1, p0}, Lcom/mob/tools/gui/AsyncImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->aivThumb:Lcom/mob/tools/gui/AsyncImageView;

    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->initThumb(Lcom/mob/tools/gui/AsyncImageView;)V

    .line 180
    new-instance p1, Lcn/sharesdk/onekeyshare/themes/classic/XView;

    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcn/sharesdk/onekeyshare/themes/classic/XView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->xvRemove:Lcn/sharesdk/onekeyshare/themes/classic/XView;

    .line 181
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->xvRemove:Lcn/sharesdk/onekeyshare/themes/classic/XView;

    invoke-virtual {p1, p2}, Lcn/sharesdk/onekeyshare/themes/classic/XView;->setRatio(F)V

    .line 182
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0xa

    .line 183
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p2, 0xb

    .line 184
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 185
    iget-object p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->rlThumb:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->xvRemove:Lcn/sharesdk/onekeyshare/themes/classic/XView;

    invoke-virtual {p2, v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->xvRemove:Lcn/sharesdk/onekeyshare/themes/classic/XView;

    invoke-virtual {p1, p0}, Lcn/sharesdk/onekeyshare/themes/classic/XView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initBottom(Landroid/widget/LinearLayout;F)V
    .locals 9

    .line 190
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 191
    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v2, -0x1

    .line 192
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/high16 v3, 0x42960000    # 75.0f

    mul-float v3, v3, p2

    float-to-int v3, v3

    .line 194
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 195
    invoke-virtual {p1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvAt:Landroid/widget/TextView;

    .line 198
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvAt:Landroid/widget/TextView;

    const v4, -0xc4c4c5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvAt:Landroid/widget/TextView;

    const/4 v5, 0x2

    const/high16 v6, 0x41b00000    # 22.0f

    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 200
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvAt:Landroid/widget/TextView;

    const/16 v6, 0x50

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 201
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvAt:Landroid/widget/TextView;

    const-string v6, "@"

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x42200000    # 40.0f

    mul-float v3, v3, p2

    float-to-int v3, v3

    .line 203
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvAt:Landroid/widget/TextView;

    invoke-virtual {v6, v3, v1, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 204
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 205
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvAt:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvAt:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->platform:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v6}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->isShowAtUserLayout(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 208
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvAt:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 210
    :cond_0
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvAt:Landroid/widget/TextView;

    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    :goto_0
    new-instance v6, Landroid/widget/TextView;

    iget-object v8, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v6, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvTextCouter:Landroid/widget/TextView;

    .line 214
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvTextCouter:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 215
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvTextCouter:Landroid/widget/TextView;

    const/high16 v6, 0x41a80000    # 21.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 216
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvTextCouter:Landroid/widget/TextView;

    const/16 v5, 0x55

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 217
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->etContent:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {p0, v4, v1, v1, v1}, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 218
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvTextCouter:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v1, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 219
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 220
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 221
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvTextCouter:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v1, -0x333334

    .line 224
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    cmpl-float v1, p2, v3

    if-lez v1, :cond_1

    float-to-int p2, p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    .line 226
    :goto_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 227
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

    .line 232
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 234
    new-instance p2, Landroid/view/View;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {p2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x29000000

    .line 235
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 236
    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    new-instance p2, Landroid/view/View;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {p2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x14000000

    .line 239
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 240
    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    new-instance p2, Landroid/view/View;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {p2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x7000000

    .line 243
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 244
    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initThumb(Lcom/mob/tools/gui/AsyncImageView;)V
    .locals 6

    .line 248
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->sp:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->sp:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    .line 250
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->sp:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v2

    .line 253
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->rlThumb:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 254
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    :try_start_0
    invoke-static {v1}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 258
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 263
    iput-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->thumb:Landroid/graphics/Bitmap;

    .line 264
    invoke-virtual {p1, v3}, Lcom/mob/tools/gui/AsyncImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 265
    array-length v5, v2

    if-lez v5, :cond_2

    .line 266
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

    .line 268
    :try_start_1
    invoke-static {v1}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 270
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 276
    iput-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->thumb:Landroid/graphics/Bitmap;

    .line 277
    invoke-virtual {p1, v3}, Lcom/mob/tools/gui/AsyncImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_3
    if-nez v3, :cond_4

    .line 278
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 279
    invoke-virtual {p1, v0, v4}, Lcom/mob/tools/gui/AsyncImageView;->execute(Ljava/lang/String;I)V

    goto :goto_2

    .line 281
    :cond_4
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->rlThumb:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private initTitle(Landroid/widget/RelativeLayout;F)V
    .locals 9

    .line 100
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvCancel:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvCancel:Landroid/widget/TextView;

    const v1, -0xc4c4c5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvCancel:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 103
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvCancel:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 104
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    const-string v5, "ssdk_oks_cancel"

    invoke-static {v0, v5}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 106
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const/high16 v0, 0x42200000    # 40.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 109
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvCancel:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v0, p2, v5, p2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 110
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v0, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 111
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {p1, v8, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    new-instance v0, Landroid/widget/TextView;

    iget-object v8, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v0, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41b00000    # 22.0f

    .line 116
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 117
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 118
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    const-string v8, "ssdk_oks_multi_share"

    invoke-static {v1, v8}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 120
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 122
    :cond_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xd

    .line 123
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 124
    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvShare:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvShare:Landroid/widget/TextView;

    const v1, -0x92ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvShare:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 129
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvShare:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 130
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    const-string v1, "ssdk_oks_share"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 132
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvShare:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 134
    :cond_2
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvShare:Landroid/widget/TextView;

    invoke-virtual {v0, p2, v5, p2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 135
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    .line 136
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 137
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvShare:Landroid/widget/TextView;

    invoke-virtual {p1, v0, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvShare:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 7

    .line 63
    invoke-super {p0}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->onCreate()V

    .line 64
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x44a00000    # 1280.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    .line 67
    iput v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->maxBodyHeight:I

    .line 69
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->llPage:Landroid/widget/LinearLayout;

    .line 70
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->llPage:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 71
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->llPage:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 73
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->rlTitle:Landroid/widget/RelativeLayout;

    .line 74
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->rlTitle:Landroid/widget/RelativeLayout;

    const v3, -0x191614

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const/high16 v1, 0x42c00000    # 96.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    .line 77
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 78
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->llPage:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->rlTitle:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->rlTitle:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v0}, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->initTitle(Landroid/widget/RelativeLayout;F)V

    .line 81
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 83
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 84
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->llPage:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    invoke-direct {p0, v1, v0}, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->initBody(Landroid/widget/RelativeLayout;F)V

    .line 87
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v3, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 89
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    invoke-direct {p0, v3, v0}, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->initShadow(Landroid/widget/LinearLayout;F)V

    .line 92
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->llBottom:Landroid/widget/LinearLayout;

    .line 93
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->llBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 94
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 95
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->llPage:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->llBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->llBottom:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v0}, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->initBottom(Landroid/widget/LinearLayout;F)V

    return-void
.end method
