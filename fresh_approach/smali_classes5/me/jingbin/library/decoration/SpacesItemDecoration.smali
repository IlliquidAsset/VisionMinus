.class public Lme/jingbin/library/decoration/SpacesItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SpacesItemDecoration.java"


# static fields
.field private static final ATTRS:[I

.field public static final HORIZONTAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "itemDivider"

.field public static final VERTICAL:I = 0x1


# instance fields
.field private byRecyclerView:Lme/jingbin/library/ByRecyclerView;

.field private mBounds:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerSpacing:I

.field private mFooterNoShowSize:I

.field private mHeaderNoShowSize:I

.field private mLeftTopPadding:I

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRightBottomPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010214

    aput v2, v0, v1

    .line 51
    sput-object v0, Lme/jingbin/library/decoration/SpacesItemDecoration;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1, v0, v1, v0}, Lme/jingbin/library/decoration/SpacesItemDecoration;-><init>(Landroid/content/Context;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 88
    invoke-direct {p0, p1, p2, v0, v1}, Lme/jingbin/library/decoration/SpacesItemDecoration;-><init>(Landroid/content/Context;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x1

    .line 92
    invoke-direct {p0, p1, p2, p3, v0}, Lme/jingbin/library/decoration/SpacesItemDecoration;-><init>(Landroid/content/Context;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2

    .line 103
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mHeaderNoShowSize:I

    const/4 v1, 0x1

    .line 60
    iput v1, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mFooterNoShowSize:I

    .line 104
    iput-object p1, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mContext:Landroid/content/Context;

    .line 105
    iput p3, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mHeaderNoShowSize:I

    .line 106
    iput p4, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mFooterNoShowSize:I

    .line 107
    invoke-virtual {p0, p2}, Lme/jingbin/library/decoration/SpacesItemDecoration;->setOrientation(I)Lme/jingbin/library/decoration/SpacesItemDecoration;

    .line 108
    sget-object p2, Lme/jingbin/library/decoration/SpacesItemDecoration;->ATTRS:[I

    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 109
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 110
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private drawHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 205
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v4

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 212
    invoke-virtual {v7, v4, v1, v5, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move v9, v1

    move v10, v3

    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v3

    move v10, v3

    const/4 v9, 0x0

    .line 219
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v11

    .line 220
    invoke-virtual/range {p3 .. p3}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    add-int/lit8 v12, v1, -0x1

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v11, :cond_4

    .line 222
    invoke-virtual {v8, v13}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 223
    invoke-virtual {v8, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    .line 226
    iget v3, v0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mHeaderNoShowSize:I

    if-ge v2, v3, :cond_1

    goto :goto_2

    .line 230
    :cond_1
    iget v3, v0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mFooterNoShowSize:I

    sub-int v3, v12, v3

    if-gt v2, v3, :cond_3

    .line 231
    iget-object v2, v0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 232
    iget-object v2, v0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 233
    iget-object v2, v0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 234
    iget-object v3, v0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int v3, v2, v3

    .line 235
    iget-object v4, v0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3, v9, v2, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 236
    iget-object v2, v0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 239
    :cond_2
    iget-object v2, v0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_3

    .line 240
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 241
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 242
    iget v2, v0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mDividerSpacing:I

    add-int/2addr v2, v1

    .line 243
    iget v3, v0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mLeftTopPadding:I

    add-int/2addr v3, v9

    .line 244
    iget v4, v0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mRightBottomPadding:I

    sub-int v4, v10, v4

    int-to-float v5, v1

    int-to-float v3, v3

    int-to-float v6, v2

    int-to-float v14, v4

    .line 245
    iget-object v15, v0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v5

    move v4, v6

    move v5, v14

    move-object v6, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 249
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 158
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v1

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v7, v1, v4, v3, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move v9, v1

    move v10, v3

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v3

    move v10, v3

    const/4 v9, 0x0

    .line 171
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v11

    .line 172
    invoke-virtual/range {p3 .. p3}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    add-int/lit8 v12, v1, -0x1

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v11, :cond_4

    .line 174
    invoke-virtual {v8, v13}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 175
    invoke-virtual {v8, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    .line 178
    iget v3, v0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mHeaderNoShowSize:I

    if-ge v2, v3, :cond_1

    goto :goto_2

    .line 182
    :cond_1
    iget v3, v0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mFooterNoShowSize:I

    sub-int v3, v12, v3

    if-gt v2, v3, :cond_3

    .line 183
    iget-object v2, v0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 184
    iget-object v2, v0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 185
    iget-object v2, v0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 186
    iget-object v3, v0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int v3, v2, v3

    .line 187
    iget-object v4, v0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v9, v3, v10, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 188
    iget-object v2, v0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 191
    :cond_2
    iget-object v2, v0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_3

    .line 192
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 193
    iget v3, v0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mLeftTopPadding:I

    add-int/2addr v3, v9

    .line 194
    iget v4, v0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mRightBottomPadding:I

    sub-int v4, v10, v4

    .line 195
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    .line 196
    iget v2, v0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mDividerSpacing:I

    add-int/2addr v2, v1

    int-to-float v3, v3

    int-to-float v5, v1

    int-to-float v4, v4

    int-to-float v6, v2

    .line 197
    iget-object v14, v0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v5

    move v5, v6

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 201
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method public dip2px(F)I
    .locals 1

    .line 344
    iget-object v0, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    .line 254
    iget-object v0, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 255
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 259
    :cond_0
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p4

    const/4 v0, 0x1

    sub-int/2addr p4, v0

    .line 260
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 263
    iget-object v2, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->byRecyclerView:Lme/jingbin/library/ByRecyclerView;

    if-nez v2, :cond_1

    instance-of v2, p3, Lme/jingbin/library/ByRecyclerView;

    if-eqz v2, :cond_1

    .line 264
    check-cast p3, Lme/jingbin/library/ByRecyclerView;

    iput-object p3, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->byRecyclerView:Lme/jingbin/library/ByRecyclerView;

    .line 266
    :cond_1
    iget-object p3, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->byRecyclerView:Lme/jingbin/library/ByRecyclerView;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lme/jingbin/library/ByRecyclerView;->isRefreshEnabled()Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_3

    if-nez p2, :cond_3

    const/4 p3, 0x1

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    .line 272
    :goto_1
    iget v2, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mHeaderNoShowSize:I

    if-gt v2, p2, :cond_4

    iget v2, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mFooterNoShowSize:I

    sub-int/2addr p4, v2

    if-gt p2, p4, :cond_4

    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    .line 274
    :goto_2
    iget p4, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mOrientation:I

    if-ne p4, v0, :cond_8

    if-eqz p3, :cond_5

    .line 276
    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    :cond_5
    if-eqz p2, :cond_7

    .line 278
    iget-object p2, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    goto :goto_3

    :cond_6
    iget p2, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mDividerSpacing:I

    :goto_3
    invoke-virtual {p1, v1, v1, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    .line 280
    :cond_7
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    :cond_8
    if-eqz p3, :cond_9

    .line 284
    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    :cond_9
    if-eqz p2, :cond_b

    .line 286
    iget-object p2, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    goto :goto_4

    :cond_a
    iget p2, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mDividerSpacing:I

    :goto_4
    invoke-virtual {p1, v1, v1, p2, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    .line 288
    :cond_b
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_5
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 147
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    iget v0, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 151
    invoke-direct {p0, p1, p2, p3}, Lme/jingbin/library/decoration/SpacesItemDecoration;->drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    goto :goto_0

    .line 153
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lme/jingbin/library/decoration/SpacesItemDecoration;->drawHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setDrawable(I)Lme/jingbin/library/decoration/SpacesItemDecoration;
    .locals 1

    .line 141
    iget-object v0, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lme/jingbin/library/decoration/SpacesItemDecoration;->setDrawable(Landroid/graphics/drawable/Drawable;)Lme/jingbin/library/decoration/SpacesItemDecoration;

    return-object p0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)Lme/jingbin/library/decoration/SpacesItemDecoration;
    .locals 1

    if-eqz p1, :cond_0

    .line 136
    iput-object p1, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 134
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "drawable cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHeaderNoShowDivider(I)Lme/jingbin/library/decoration/SpacesItemDecoration;
    .locals 0

    .line 311
    iput p1, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mHeaderNoShowSize:I

    return-object p0
.end method

.method public setNoShowDivider(II)Lme/jingbin/library/decoration/SpacesItemDecoration;
    .locals 0

    .line 300
    iput p1, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mHeaderNoShowSize:I

    .line 301
    iput p2, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mFooterNoShowSize:I

    return-object p0
.end method

.method public setOrientation(I)Lme/jingbin/library/decoration/SpacesItemDecoration;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid orientation. It should be either HORIZONTAL or VERTICAL"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_1
    :goto_0
    iput p1, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mOrientation:I

    return-object p0
.end method

.method public setParam(II)Lme/jingbin/library/decoration/SpacesItemDecoration;
    .locals 1

    const/4 v0, 0x0

    .line 316
    invoke-virtual {p0, p1, p2, v0, v0}, Lme/jingbin/library/decoration/SpacesItemDecoration;->setParam(IIFF)Lme/jingbin/library/decoration/SpacesItemDecoration;

    move-result-object p1

    return-object p1
.end method

.method public setParam(IIFF)Lme/jingbin/library/decoration/SpacesItemDecoration;
    .locals 2

    .line 330
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mPaint:Landroid/graphics/Paint;

    .line 331
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 332
    iget-object v0, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 333
    iput p2, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mDividerSpacing:I

    .line 334
    invoke-virtual {p0, p3}, Lme/jingbin/library/decoration/SpacesItemDecoration;->dip2px(F)I

    move-result p1

    iput p1, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mLeftTopPadding:I

    .line 335
    invoke-virtual {p0, p4}, Lme/jingbin/library/decoration/SpacesItemDecoration;->dip2px(F)I

    move-result p1

    iput p1, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mRightBottomPadding:I

    const/4 p1, 0x0

    .line 336
    iput-object p1, p0, Lme/jingbin/library/decoration/SpacesItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method
