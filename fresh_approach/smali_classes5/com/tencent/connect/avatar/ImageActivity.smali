.class public Lcom/tencent/connect/avatar/ImageActivity;
.super Landroid/app/Activity;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/connect/avatar/ImageActivity$QQAvatarImp;,
        Lcom/tencent/connect/avatar/ImageActivity$a;
    }
.end annotation


# instance fields
.field a:Landroid/widget/RelativeLayout;

.field private b:Lcom/tencent/connect/auth/QQToken;

.field private c:Ljava/lang/String;

.field private d:Landroid/os/Handler;

.field private e:Lcom/tencent/connect/avatar/c;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Lcom/tencent/connect/avatar/b;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ProgressBar;

.field private k:I

.field private l:Z

.field private m:J

.field private n:I

.field private final o:I

.field private final p:I

.field private q:Landroid/graphics/Rect;

.field private r:Ljava/lang/String;

.field private s:Landroid/graphics/Bitmap;

.field private final t:Landroid/view/View$OnClickListener;

.field private final u:Landroid/view/View$OnClickListener;

.field private final v:Lcom/tencent/tauth/IUiListener;

.field private final w:Lcom/tencent/tauth/IUiListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->k:I

    .line 75
    iput-boolean v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->l:Z

    const-wide/16 v1, 0x0

    .line 76
    iput-wide v1, p0, Lcom/tencent/connect/avatar/ImageActivity;->m:J

    .line 78
    iput v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->n:I

    const/16 v0, 0x280

    .line 80
    iput v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->o:I

    .line 81
    iput v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->p:I

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->q:Landroid/graphics/Rect;

    .line 447
    new-instance v0, Lcom/tencent/connect/avatar/ImageActivity$2;

    invoke-direct {v0, p0}, Lcom/tencent/connect/avatar/ImageActivity$2;-><init>(Lcom/tencent/connect/avatar/ImageActivity;)V

    iput-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->t:Landroid/view/View$OnClickListener;

    .line 475
    new-instance v0, Lcom/tencent/connect/avatar/ImageActivity$3;

    invoke-direct {v0, p0}, Lcom/tencent/connect/avatar/ImageActivity$3;-><init>(Lcom/tencent/connect/avatar/ImageActivity;)V

    iput-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->u:Landroid/view/View$OnClickListener;

    .line 649
    new-instance v0, Lcom/tencent/connect/avatar/ImageActivity$5;

    invoke-direct {v0, p0}, Lcom/tencent/connect/avatar/ImageActivity$5;-><init>(Lcom/tencent/connect/avatar/ImageActivity;)V

    iput-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->v:Lcom/tencent/tauth/IUiListener;

    .line 716
    new-instance v0, Lcom/tencent/connect/avatar/ImageActivity$6;

    invoke-direct {v0, p0}, Lcom/tencent/connect/avatar/ImageActivity$6;-><init>(Lcom/tencent/connect/avatar/ImageActivity;)V

    iput-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->w:Lcom/tencent/tauth/IUiListener;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 97
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 98
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 99
    invoke-virtual {p0}, Lcom/tencent/connect/avatar/ImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 107
    :cond_0
    :try_start_0
    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 109
    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 111
    :goto_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const/high16 v2, 0x400000

    .line 116
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_1
    mul-int v6, v4, v5

    if-gt v6, v2, :cond_1

    const/4 v2, 0x0

    .line 126
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 127
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 129
    invoke-virtual {p0}, Lcom/tencent/connect/avatar/ImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 131
    :try_start_1
    invoke-static {p1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :goto_2
    return-object v3

    .line 122
    :cond_1
    div-int/lit8 v4, v4, 0x2

    .line 123
    div-int/lit8 v5, v5, 0x2

    mul-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method

.method static synthetic a(Lcom/tencent/connect/avatar/ImageActivity;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/tencent/connect/avatar/ImageActivity;->q:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/connect/avatar/ImageActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/tencent/connect/avatar/ImageActivity;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private a()Landroid/view/View;
    .locals 15

    .line 156
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 158
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 160
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 163
    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/tencent/connect/avatar/ImageActivity;->a:Landroid/widget/RelativeLayout;

    .line 164
    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->a:Landroid/widget/RelativeLayout;

    const/high16 v5, -0x1000000

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 167
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 168
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object v5, p0, Lcom/tencent/connect/avatar/ImageActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 171
    new-instance v5, Lcom/tencent/connect/avatar/c;

    invoke-direct {v5, p0}, Lcom/tencent/connect/avatar/c;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/tencent/connect/avatar/ImageActivity;->e:Lcom/tencent/connect/avatar/c;

    .line 172
    invoke-virtual {v5, v2}, Lcom/tencent/connect/avatar/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v5, p0, Lcom/tencent/connect/avatar/ImageActivity;->e:Lcom/tencent/connect/avatar/c;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Lcom/tencent/connect/avatar/c;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 174
    iget-object v5, p0, Lcom/tencent/connect/avatar/ImageActivity;->e:Lcom/tencent/connect/avatar/c;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 176
    new-instance v5, Lcom/tencent/connect/avatar/b;

    invoke-direct {v5, p0}, Lcom/tencent/connect/avatar/b;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/tencent/connect/avatar/ImageActivity;->h:Lcom/tencent/connect/avatar/b;

    .line 177
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0xe

    .line 179
    invoke-virtual {v5, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v6, 0xf

    .line 181
    invoke-virtual {v5, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 183
    iget-object v7, p0, Lcom/tencent/connect/avatar/ImageActivity;->h:Lcom/tencent/connect/avatar/b;

    invoke-virtual {v7, v5}, Lcom/tencent/connect/avatar/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget-object v5, p0, Lcom/tencent/connect/avatar/ImageActivity;->h:Lcom/tencent/connect/avatar/b;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 187
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 188
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v7, 0x42a00000    # 80.0f

    invoke-static {p0, v7}, Lcom/tencent/connect/avatar/a;->a(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 191
    invoke-virtual {v5, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 193
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    .line 194
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x11

    .line 195
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 196
    iget-object v5, p0, Lcom/tencent/connect/avatar/ImageActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 198
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 199
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-static {p0, v8}, Lcom/tencent/connect/avatar/a;->a(Landroid/content/Context;F)I

    move-result v9

    invoke-static {p0, v8}, Lcom/tencent/connect/avatar/a;->a(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v7, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 201
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v7, "com.tencent.plus.logo.png"

    .line 202
    invoke-direct {p0, v7}, Lcom/tencent/connect/avatar/ImageActivity;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 205
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/tencent/connect/avatar/ImageActivity;->i:Landroid/widget/TextView;

    .line 206
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v7, 0x40e00000    # 7.0f

    .line 208
    invoke-static {p0, v7}, Lcom/tencent/connect/avatar/a;->a(Landroid/content/Context;F)I

    move-result v9

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 209
    iget-object v9, p0, Lcom/tencent/connect/avatar/ImageActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object v5, p0, Lcom/tencent/connect/avatar/ImageActivity;->i:Landroid/widget/TextView;

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 211
    iget-object v5, p0, Lcom/tencent/connect/avatar/ImageActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->setSingleLine()V

    .line 212
    iget-object v5, p0, Lcom/tencent/connect/avatar/ImageActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    iget-object v5, p0, Lcom/tencent/connect/avatar/ImageActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 214
    iget-object v5, p0, Lcom/tencent/connect/avatar/ImageActivity;->i:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v5, p0, Lcom/tencent/connect/avatar/ImageActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 218
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 219
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v9, 0x42700000    # 60.0f

    invoke-static {p0, v9}, Lcom/tencent/connect/avatar/a;->a(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v5, v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0xc

    .line 223
    invoke-virtual {v5, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v9, 0x9

    .line 225
    invoke-virtual {v5, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 227
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v5, "com.tencent.plus.bar.png"

    .line 228
    invoke-direct {p0, v5}, Lcom/tencent/connect/avatar/ImageActivity;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v5, 0x41200000    # 10.0f

    .line 230
    invoke-static {p0, v5}, Lcom/tencent/connect/avatar/a;->a(Landroid/content/Context;F)I

    move-result v5

    .line 231
    invoke-virtual {v0, v5, v5, v5, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 232
    iget-object v5, p0, Lcom/tencent/connect/avatar/ImageActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 233
    new-instance v5, Lcom/tencent/connect/avatar/ImageActivity$a;

    invoke-direct {v5, p0, p0}, Lcom/tencent/connect/avatar/ImageActivity$a;-><init>(Lcom/tencent/connect/avatar/ImageActivity;Landroid/content/Context;)V

    const/high16 v9, 0x41600000    # 14.0f

    .line 235
    invoke-static {p0, v9}, Lcom/tencent/connect/avatar/a;->a(Landroid/content/Context;F)I

    move-result v9

    .line 236
    invoke-static {p0, v7}, Lcom/tencent/connect/avatar/a;->a(Landroid/content/Context;F)I

    move-result v7

    .line 238
    new-instance v10, Landroid/widget/Button;

    invoke-direct {v10, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/tencent/connect/avatar/ImageActivity;->g:Landroid/widget/Button;

    .line 239
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v11, 0x429c0000    # 78.0f

    invoke-static {p0, v11}, Lcom/tencent/connect/avatar/a;->a(Landroid/content/Context;F)I

    move-result v12

    const/high16 v13, 0x42340000    # 45.0f

    invoke-static {p0, v13}, Lcom/tencent/connect/avatar/a;->a(Landroid/content/Context;F)I

    move-result v14

    invoke-direct {v10, v12, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 241
    iget-object v12, p0, Lcom/tencent/connect/avatar/ImageActivity;->g:Landroid/widget/Button;

    invoke-virtual {v12, v10}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    iget-object v10, p0, Lcom/tencent/connect/avatar/ImageActivity;->g:Landroid/widget/Button;

    const-string v12, "\u53d6\u6d88"

    invoke-virtual {v10, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v10, p0, Lcom/tencent/connect/avatar/ImageActivity;->g:Landroid/widget/Button;

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 245
    iget-object v10, p0, Lcom/tencent/connect/avatar/ImageActivity;->g:Landroid/widget/Button;

    const/high16 v12, 0x41900000    # 18.0f

    invoke-virtual {v10, v12}, Landroid/widget/Button;->setTextSize(F)V

    .line 246
    iget-object v10, p0, Lcom/tencent/connect/avatar/ImageActivity;->g:Landroid/widget/Button;

    invoke-virtual {v10, v9, v7, v9, v7}, Landroid/widget/Button;->setPadding(IIII)V

    .line 249
    iget-object v10, p0, Lcom/tencent/connect/avatar/ImageActivity;->g:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Lcom/tencent/connect/avatar/ImageActivity$a;->b(Landroid/widget/Button;)V

    .line 250
    iget-object v10, p0, Lcom/tencent/connect/avatar/ImageActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 252
    new-instance v10, Landroid/widget/Button;

    invoke-direct {v10, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/tencent/connect/avatar/ImageActivity;->f:Landroid/widget/Button;

    .line 253
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p0, v11}, Lcom/tencent/connect/avatar/a;->a(Landroid/content/Context;F)I

    move-result v11

    invoke-static {p0, v13}, Lcom/tencent/connect/avatar/a;->a(Landroid/content/Context;F)I

    move-result v13

    invoke-direct {v10, v11, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0xb

    .line 255
    invoke-virtual {v10, v11, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 257
    iget-object v11, p0, Lcom/tencent/connect/avatar/ImageActivity;->f:Landroid/widget/Button;

    invoke-virtual {v11, v10}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    iget-object v10, p0, Lcom/tencent/connect/avatar/ImageActivity;->f:Landroid/widget/Button;

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 259
    iget-object v10, p0, Lcom/tencent/connect/avatar/ImageActivity;->f:Landroid/widget/Button;

    invoke-virtual {v10, v12}, Landroid/widget/Button;->setTextSize(F)V

    .line 260
    iget-object v10, p0, Lcom/tencent/connect/avatar/ImageActivity;->f:Landroid/widget/Button;

    invoke-virtual {v10, v9, v7, v9, v7}, Landroid/widget/Button;->setPadding(IIII)V

    .line 262
    iget-object v7, p0, Lcom/tencent/connect/avatar/ImageActivity;->f:Landroid/widget/Button;

    const-string v9, "\u9009\u53d6"

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v7, p0, Lcom/tencent/connect/avatar/ImageActivity;->f:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Lcom/tencent/connect/avatar/ImageActivity$a;->a(Landroid/widget/Button;)V

    .line 265
    iget-object v5, p0, Lcom/tencent/connect/avatar/ImageActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 268
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 269
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v9, 0xd

    .line 271
    invoke-virtual {v7, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 273
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v7, "\u79fb\u52a8\u548c\u7f29\u653e"

    .line 274
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x40400000    # 3.0f

    .line 275
    invoke-static {p0, v7}, Lcom/tencent/connect/avatar/a;->a(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v5, v4, v7, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 276
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 277
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 281
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->j:Landroid/widget/ProgressBar;

    .line 282
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 286
    invoke-virtual {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 288
    iget-object v1, p0, Lcom/tencent/connect/avatar/ImageActivity;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tencent/connect/avatar/ImageActivity;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 292
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/connect/avatar/ImageActivity;)Lcom/tencent/connect/avatar/b;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tencent/connect/avatar/ImageActivity;->h:Lcom/tencent/connect/avatar/b;

    return-object p0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 602
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "key_error_code"

    .line 603
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "key_error_msg"

    .line 604
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "key_error_detail"

    .line 605
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "key_response"

    .line 606
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 608
    invoke-virtual {p0, p1, v0}, Lcom/tencent/connect/avatar/ImageActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 535
    new-instance v0, Lcom/tencent/connect/avatar/ImageActivity$QQAvatarImp;

    iget-object v1, p0, Lcom/tencent/connect/avatar/ImageActivity;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-direct {v0, p0, v1}, Lcom/tencent/connect/avatar/ImageActivity$QQAvatarImp;-><init>(Lcom/tencent/connect/avatar/ImageActivity;Lcom/tencent/connect/auth/QQToken;)V

    .line 536
    iget-object v1, p0, Lcom/tencent/connect/avatar/ImageActivity;->v:Lcom/tencent/tauth/IUiListener;

    invoke-virtual {v0, p1, v1}, Lcom/tencent/connect/avatar/ImageActivity$QQAvatarImp;->setAvator(Landroid/graphics/Bitmap;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/connect/avatar/ImageActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/connect/avatar/ImageActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/connect/avatar/ImageActivity;Ljava/lang/String;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/tencent/connect/avatar/ImageActivity;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    .line 568
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->d:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/connect/avatar/ImageActivity$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/connect/avatar/ImageActivity$4;-><init>(Lcom/tencent/connect/avatar/ImageActivity;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/connect/avatar/ImageActivity;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/tencent/connect/avatar/ImageActivity;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/connect/avatar/ImageActivity;)Landroid/graphics/Rect;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tencent/connect/avatar/ImageActivity;->q:Landroid/graphics/Rect;

    return-object p0
.end method

.method private b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 143
    invoke-virtual {p0}, Lcom/tencent/connect/avatar/ImageActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 146
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 147
    invoke-static {v0, p1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 148
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 150
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method private b()V
    .locals 4

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->r:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tencent/connect/avatar/ImageActivity;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->s:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 347
    iget-object v1, p0, Lcom/tencent/connect/avatar/ImageActivity;->e:Lcom/tencent/connect/avatar/c;

    invoke-virtual {v1, v0}, Lcom/tencent/connect/avatar/c;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 339
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot read picture: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/connect/avatar/ImageActivity;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 351
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v1, "\u56fe\u7247\u8bfb\u53d6\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u8be5\u56fe\u7247\u662f\u5426\u6709\u6548"

    const/4 v2, 0x1

    .line 353
    invoke-direct {p0, v1, v2}, Lcom/tencent/connect/avatar/ImageActivity;->a(Ljava/lang/String;I)V

    const/4 v2, -0x5

    const/4 v3, 0x0

    .line 354
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/tencent/connect/avatar/ImageActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-direct {p0}, Lcom/tencent/connect/avatar/ImageActivity;->d()V

    .line 367
    :goto_0
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tencent/connect/avatar/ImageActivity;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->g:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tencent/connect/avatar/ImageActivity;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/tencent/connect/avatar/ImageActivity$1;

    invoke-direct {v1, p0}, Lcom/tencent/connect/avatar/ImageActivity$1;-><init>(Lcom/tencent/connect/avatar/ImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/connect/avatar/ImageActivity;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/tencent/connect/avatar/ImageActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/connect/avatar/ImageActivity;Ljava/lang/String;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/tencent/connect/avatar/ImageActivity;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private b(Ljava/lang/String;I)V
    .locals 6

    const/4 v0, 0x1

    .line 577
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 578
    invoke-virtual {p1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 579
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x8

    .line 580
    invoke-virtual {v2, v3, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 581
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 582
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {p0, v4}, Lcom/tencent/connect/avatar/a;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v4}, Lcom/tencent/connect/avatar/a;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 584
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p2, :cond_0

    const-string p2, "com.tencent.plus.ic_success.png"

    .line 586
    invoke-direct {p0, p2}, Lcom/tencent/connect/avatar/ImageActivity;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const-string p2, "com.tencent.plus.ic_error.png"

    .line 589
    invoke-direct {p0, p2}, Lcom/tencent/connect/avatar/ImageActivity;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 592
    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 593
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p2, 0x11

    .line 594
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 595
    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 596
    invoke-virtual {p1, p2, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 597
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic c(Lcom/tencent/connect/avatar/ImageActivity;)Lcom/tencent/connect/avatar/c;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tencent/connect/avatar/ImageActivity;->e:Lcom/tencent/connect/avatar/c;

    return-object p0
.end method

.method private c()V
    .locals 14

    .line 486
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->q:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 487
    iget-object v1, p0, Lcom/tencent/connect/avatar/ImageActivity;->e:Lcom/tencent/connect/avatar/c;

    invoke-virtual {v1}, Lcom/tencent/connect/avatar/c;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [F

    .line 489
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v3, 0x2

    .line 490
    aget v3, v2, v3

    const/4 v4, 0x5

    .line 491
    aget v4, v2, v4

    const/4 v5, 0x0

    .line 492
    aget v2, v2, v5

    const/high16 v6, 0x44200000    # 640.0f

    div-float/2addr v6, v0

    .line 494
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->q:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr v0, v3

    div-float/2addr v0, v2

    float-to-int v0, v0

    if-gez v0, :cond_0

    const/4 v8, 0x0

    goto :goto_0

    :cond_0
    move v8, v0

    .line 496
    :goto_0
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->q:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v0, v4

    div-float/2addr v0, v2

    float-to-int v0, v0

    if-gez v0, :cond_1

    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    move v9, v0

    .line 498
    :goto_1
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 499
    invoke-virtual {v12, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 500
    invoke-virtual {v12, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    const v0, 0x44228000    # 650.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 503
    iget-object v1, p0, Lcom/tencent/connect/avatar/ImageActivity;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, v8

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 505
    iget-object v1, p0, Lcom/tencent/connect/avatar/ImageActivity;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 508
    :try_start_0
    iget-object v7, p0, Lcom/tencent/connect/avatar/ImageActivity;->s:Landroid/graphics/Bitmap;

    const/4 v13, 0x1

    invoke-static/range {v7 .. v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v1, 0x280

    .line 510
    invoke-static {v0, v5, v5, v1, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 513
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 519
    invoke-direct {p0, v1}, Lcom/tencent/connect/avatar/ImageActivity;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 521
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string v1, "\u56fe\u7247\u8bfb\u53d6\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u8be5\u56fe\u7247\u662f\u5426\u6709\u6548"

    const/4 v2, 0x1

    .line 523
    invoke-direct {p0, v1, v2}, Lcom/tencent/connect/avatar/ImageActivity;->a(Ljava/lang/String;I)V

    const/4 v2, -0x5

    const/4 v3, 0x0

    .line 524
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/tencent/connect/avatar/ImageActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-direct {p0}, Lcom/tencent/connect/avatar/ImageActivity;->d()V

    :goto_2
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .line 633
    invoke-direct {p0, p1}, Lcom/tencent/connect/avatar/ImageActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 634
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    iget-object p1, p0, Lcom/tencent/connect/avatar/ImageActivity;->i:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/tencent/connect/avatar/ImageActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tencent/connect/avatar/ImageActivity;->j:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "&gt;"

    const-string v1, ">"

    .line 641
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "&lt;"

    const-string v1, "<"

    .line 642
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "&quot;"

    const-string v1, "\""

    .line 643
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "&#39;"

    const-string v1, "\'"

    .line 644
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "&amp;"

    const-string v1, "&"

    .line 645
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d()V
    .locals 2

    .line 612
    invoke-virtual {p0}, Lcom/tencent/connect/avatar/ImageActivity;->finish()V

    .line 613
    iget v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->n:I

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 614
    invoke-virtual {p0, v1, v0}, Lcom/tencent/connect/avatar/ImageActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/tencent/connect/avatar/ImageActivity;)Landroid/widget/Button;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tencent/connect/avatar/ImageActivity;->g:Landroid/widget/Button;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 622
    iget v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->k:I

    .line 623
    new-instance v0, Lcom/tencent/connect/UserInfo;

    iget-object v1, p0, Lcom/tencent/connect/avatar/ImageActivity;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-direct {v0, p0, v1}, Lcom/tencent/connect/UserInfo;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    .line 624
    iget-object v1, p0, Lcom/tencent/connect/avatar/ImageActivity;->w:Lcom/tencent/tauth/IUiListener;

    invoke-virtual {v0, v1}, Lcom/tencent/connect/UserInfo;->getUserInfo(Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method static synthetic f(Lcom/tencent/connect/avatar/ImageActivity;)Landroid/widget/Button;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tencent/connect/avatar/ImageActivity;->f:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic g(Lcom/tencent/connect/avatar/ImageActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/tencent/connect/avatar/ImageActivity;->c()V

    return-void
.end method

.method static synthetic h(Lcom/tencent/connect/avatar/ImageActivity;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/tencent/connect/avatar/ImageActivity;->l:Z

    return p0
.end method

.method static synthetic i(Lcom/tencent/connect/avatar/ImageActivity;)J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->m:J

    return-wide v0
.end method

.method static synthetic j(Lcom/tencent/connect/avatar/ImageActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/tencent/connect/avatar/ImageActivity;->d()V

    return-void
.end method

.method static synthetic k(Lcom/tencent/connect/avatar/ImageActivity;)Lcom/tencent/connect/auth/QQToken;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tencent/connect/avatar/ImageActivity;->b:Lcom/tencent/connect/auth/QQToken;

    return-object p0
.end method

.method static synthetic l(Lcom/tencent/connect/avatar/ImageActivity;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tencent/connect/avatar/ImageActivity;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Lcom/tencent/connect/avatar/ImageActivity;)Landroid/os/Handler;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tencent/connect/avatar/ImageActivity;->d:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic n(Lcom/tencent/connect/avatar/ImageActivity;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/tencent/connect/avatar/ImageActivity;->k:I

    return p0
.end method

.method static synthetic o(Lcom/tencent/connect/avatar/ImageActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/tencent/connect/avatar/ImageActivity;->e()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;J)V
    .locals 1

    .line 762
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/tencent/open/utils/k;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    .line 434
    invoke-virtual {p0, v0}, Lcom/tencent/connect/avatar/ImageActivity;->setResult(I)V

    .line 435
    invoke-direct {p0}, Lcom/tencent/connect/avatar/ImageActivity;->d()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v0, 0x1

    .line 401
    invoke-virtual {p0, v0}, Lcom/tencent/connect/avatar/ImageActivity;->requestWindowFeature(I)Z

    .line 402
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 403
    invoke-virtual {p0, v0}, Lcom/tencent/connect/avatar/ImageActivity;->setRequestedOrientation(I)V

    .line 404
    invoke-direct {p0}, Lcom/tencent/connect/avatar/ImageActivity;->a()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/connect/avatar/ImageActivity;->setContentView(Landroid/view/View;)V

    .line 406
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/tencent/connect/avatar/ImageActivity;->d:Landroid/os/Handler;

    .line 408
    invoke-virtual {p0}, Lcom/tencent/connect/avatar/ImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "key_params"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "picture"

    .line 410
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->r:Ljava/lang/String;

    const-string v0, "return_activity"

    .line 411
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->c:Ljava/lang/String;

    const-string v0, "appid"

    .line 413
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "access_token"

    .line 414
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "expires_in"

    .line 415
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "openid"

    .line 416
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "exitAnim"

    .line 417
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/connect/avatar/ImageActivity;->n:I

    .line 419
    new-instance p1, Lcom/tencent/connect/auth/QQToken;

    invoke-direct {p1, v0}, Lcom/tencent/connect/auth/QQToken;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/connect/avatar/ImageActivity;->b:Lcom/tencent/connect/auth/QQToken;

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v2, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v2, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/tencent/connect/auth/QQToken;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object p1, p0, Lcom/tencent/connect/avatar/ImageActivity;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {p1, v4}, Lcom/tencent/connect/auth/QQToken;->setOpenId(Ljava/lang/String;)V

    .line 424
    invoke-direct {p0}, Lcom/tencent/connect/avatar/ImageActivity;->b()V

    .line 427
    invoke-direct {p0}, Lcom/tencent/connect/avatar/ImageActivity;->e()V

    .line 428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->m:J

    const-string p1, "10653"

    const-wide/16 v0, 0x0

    .line 429
    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/connect/avatar/ImageActivity;->a(Ljava/lang/String;J)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 440
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 441
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->e:Lcom/tencent/connect/avatar/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/connect/avatar/c;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 442
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->s:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method
