.class abstract Lcom/powervision/base/views/widget/WheelDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "WheelDecoration.java"


# static fields
.field static final DEF_SCALE:F = 0.65f

.field static final GRAVITY_CENTER:I = 0x2

.field static final GRAVITY_LEFT:I = 0x1

.field static final GRAVITY_RIGHT:I = 0x3

.field public static final IDLE_POSITION:I = -0x1


# instance fields
.field final camera:Landroid/graphics/Camera;

.field centerItemPosition:I

.field final gravity:I

.field halfItemHeight:F

.field hasCenterItem:Z

.field final itemCount:I

.field final itemDegree:F

.field final itemSize:I

.field final matrix:Landroid/graphics/Matrix;

.field final wheelRadio:F


# direct methods
.method constructor <init>(III)V
    .locals 2

    .line 65
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcom/powervision/base/views/widget/WheelDecoration;->centerItemPosition:I

    .line 66
    iput p1, p0, Lcom/powervision/base/views/widget/WheelDecoration;->itemCount:I

    .line 67
    iput p2, p0, Lcom/powervision/base/views/widget/WheelDecoration;->itemSize:I

    int-to-float v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 68
    iput v0, p0, Lcom/powervision/base/views/widget/WheelDecoration;->halfItemHeight:F

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    const/high16 v0, 0x43340000    # 180.0f

    div-float/2addr v0, p1

    .line 69
    iput v0, p0, Lcom/powervision/base/views/widget/WheelDecoration;->itemDegree:F

    .line 70
    iput p3, p0, Lcom/powervision/base/views/widget/WheelDecoration;->gravity:I

    .line 71
    invoke-static {p2, v0}, Lcom/powervision/base/utils/WheelUtils;->radianToRadio(IF)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/powervision/base/views/widget/WheelDecoration;->wheelRadio:F

    .line 73
    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Lcom/powervision/base/views/widget/WheelDecoration;->camera:Landroid/graphics/Camera;

    .line 74
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/powervision/base/views/widget/WheelDecoration;->matrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private translateX(Landroid/graphics/Rect;)F
    .locals 2

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p1

    .line 109
    iget v0, p0, Lcom/powervision/base/views/widget/WheelDecoration;->gravity:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return p1

    :cond_0
    const v0, 0x3eb33334    # 0.35000002f

    :goto_0
    mul-float p1, p1, v0

    return p1

    :cond_1
    const v0, 0x3fd33333    # 1.65f

    goto :goto_0
.end method


# virtual methods
.method degreeAlpha(F)I
    .locals 2

    .line 216
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x42b40000    # 90.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sub-float p1, v0, p1

    div-float/2addr p1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method abstract drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V
.end method

.method drawHorizontalItem(Landroid/graphics/Canvas;Landroid/graphics/Rect;IFF)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v0, p5

    .line 174
    iget v1, v7, Lcom/powervision/base/views/widget/WheelDecoration;->itemCount:I

    sub-int v3, p3, v1

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    sub-float v2, v1, p4

    .line 177
    iget v4, v7, Lcom/powervision/base/views/widget/WheelDecoration;->itemDegree:F

    mul-float v4, v4, v2

    iget v5, v7, Lcom/powervision/base/views/widget/WheelDecoration;->itemSize:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 178
    invoke-virtual {v7, v4}, Lcom/powervision/base/views/widget/WheelDecoration;->degreeAlpha(F)I

    move-result v5

    if-gtz v5, :cond_0

    return-void

    :cond_0
    float-to-double v9, v4

    .line 180
    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v6, v11

    .line 181
    iget v11, v7, Lcom/powervision/base/views/widget/WheelDecoration;->wheelRadio:F

    mul-float v11, v11, v6

    sub-float v6, v2, v11

    .line 185
    iget-boolean v11, v7, Lcom/powervision/base/views/widget/WheelDecoration;->hasCenterItem:Z

    const/4 v12, 0x0

    if-nez v11, :cond_2

    .line 186
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v11, v7, Lcom/powervision/base/views/widget/WheelDecoration;->halfItemHeight:F

    const/4 v13, 0x1

    cmpg-float v2, v2, v11

    if-gtz v2, :cond_1

    const/4 v12, 0x1

    :cond_1
    if-eqz v12, :cond_2

    .line 188
    iput v3, v7, Lcom/powervision/base/views/widget/WheelDecoration;->centerItemPosition:I

    .line 189
    iput-boolean v13, v7, Lcom/powervision/base/views/widget/WheelDecoration;->hasCenterItem:Z

    .line 193
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    neg-float v2, v6

    const/4 v6, 0x0

    .line 194
    invoke-virtual {v8, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 195
    iget-object v2, v7, Lcom/powervision/base/views/widget/WheelDecoration;->camera:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->save()V

    .line 197
    iget v2, v7, Lcom/powervision/base/views/widget/WheelDecoration;->wheelRadio:F

    float-to-double v13, v2

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    sub-double/2addr v15, v9

    mul-double v13, v13, v15

    double-to-float v2, v13

    .line 198
    iget-object v9, v7, Lcom/powervision/base/views/widget/WheelDecoration;->camera:Landroid/graphics/Camera;

    invoke-virtual {v9, v6, v6, v2}, Landroid/graphics/Camera;->translate(FFF)V

    .line 200
    iget-object v2, v7, Lcom/powervision/base/views/widget/WheelDecoration;->camera:Landroid/graphics/Camera;

    invoke-virtual {v2, v4}, Landroid/graphics/Camera;->rotateY(F)V

    .line 201
    iget-object v2, v7, Lcom/powervision/base/views/widget/WheelDecoration;->camera:Landroid/graphics/Camera;

    iget-object v4, v7, Lcom/powervision/base/views/widget/WheelDecoration;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 202
    iget-object v2, v7, Lcom/powervision/base/views/widget/WheelDecoration;->camera:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    .line 203
    iget-object v2, v7, Lcom/powervision/base/views/widget/WheelDecoration;->matrix:Landroid/graphics/Matrix;

    neg-float v4, v1

    neg-float v6, v0

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 204
    iget-object v2, v7, Lcom/powervision/base/views/widget/WheelDecoration;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 205
    iget-object v0, v7, Lcom/powervision/base/views/widget/WheelDecoration;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v4, v5

    move v5, v12

    .line 206
    invoke-virtual/range {v0 .. v6}, Lcom/powervision/base/views/widget/WheelDecoration;->drawItem(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZZ)V

    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method abstract drawItem(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZZ)V
.end method

.method drawVerticalItem(Landroid/graphics/Canvas;Landroid/graphics/Rect;IFF)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v0, p4

    .line 127
    iget v1, v7, Lcom/powervision/base/views/widget/WheelDecoration;->itemCount:I

    sub-int v3, p3, v1

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    sub-float v2, v1, p5

    .line 130
    iget v4, v7, Lcom/powervision/base/views/widget/WheelDecoration;->itemDegree:F

    mul-float v4, v4, v2

    iget v5, v7, Lcom/powervision/base/views/widget/WheelDecoration;->itemSize:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 131
    invoke-virtual {v7, v4}, Lcom/powervision/base/views/widget/WheelDecoration;->degreeAlpha(F)I

    move-result v5

    if-gtz v5, :cond_0

    return-void

    :cond_0
    float-to-double v9, v4

    .line 133
    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v6, v11

    .line 134
    iget v11, v7, Lcom/powervision/base/views/widget/WheelDecoration;->wheelRadio:F

    mul-float v11, v11, v6

    sub-float v6, v2, v11

    .line 138
    iget-boolean v11, v7, Lcom/powervision/base/views/widget/WheelDecoration;->hasCenterItem:Z

    const/4 v12, 0x0

    if-nez v11, :cond_2

    .line 139
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v11, v7, Lcom/powervision/base/views/widget/WheelDecoration;->halfItemHeight:F

    const/4 v13, 0x1

    cmpg-float v2, v2, v11

    if-gtz v2, :cond_1

    const/4 v12, 0x1

    :cond_1
    if-eqz v12, :cond_2

    .line 141
    iput v3, v7, Lcom/powervision/base/views/widget/WheelDecoration;->centerItemPosition:I

    .line 142
    iput-boolean v13, v7, Lcom/powervision/base/views/widget/WheelDecoration;->hasCenterItem:Z

    .line 146
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    neg-float v2, v6

    const/4 v6, 0x0

    .line 147
    invoke-virtual {v8, v6, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 148
    iget-object v2, v7, Lcom/powervision/base/views/widget/WheelDecoration;->camera:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->save()V

    .line 151
    iget v2, v7, Lcom/powervision/base/views/widget/WheelDecoration;->wheelRadio:F

    float-to-double v13, v2

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    sub-double/2addr v15, v9

    mul-double v13, v13, v15

    double-to-float v2, v13

    .line 152
    iget-object v9, v7, Lcom/powervision/base/views/widget/WheelDecoration;->camera:Landroid/graphics/Camera;

    invoke-virtual {v9, v6, v6, v2}, Landroid/graphics/Camera;->translate(FFF)V

    .line 155
    iget-object v2, v7, Lcom/powervision/base/views/widget/WheelDecoration;->camera:Landroid/graphics/Camera;

    neg-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Camera;->rotateX(F)V

    .line 156
    iget-object v2, v7, Lcom/powervision/base/views/widget/WheelDecoration;->camera:Landroid/graphics/Camera;

    iget-object v4, v7, Lcom/powervision/base/views/widget/WheelDecoration;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 157
    iget-object v2, v7, Lcom/powervision/base/views/widget/WheelDecoration;->camera:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    .line 158
    iget-object v2, v7, Lcom/powervision/base/views/widget/WheelDecoration;->matrix:Landroid/graphics/Matrix;

    neg-float v4, v0

    neg-float v6, v1

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 159
    iget-object v2, v7, Lcom/powervision/base/views/widget/WheelDecoration;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 160
    iget-object v0, v7, Lcom/powervision/base/views/widget/WheelDecoration;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v4, v5

    move v5, v12

    .line 161
    invoke-virtual/range {v0 .. v6}, Lcom/powervision/base/views/widget/WheelDecoration;->drawItem(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZZ)V

    .line 162
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 10

    const/4 p3, -0x1

    .line 79
    iput p3, p0, Lcom/powervision/base/views/widget/WheelDecoration;->centerItemPosition:I

    .line 80
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    instance-of p3, p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez p3, :cond_0

    return-void

    .line 81
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 82
    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 83
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLeft()I

    move-result v3

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getTop()I

    move-result v4

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getRight()I

    move-result v5

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getBottom()I

    move-result p2

    invoke-direct {v0, v3, v4, v5, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 84
    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    if-gez p2, :cond_2

    return-void

    .line 86
    :cond_2
    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    .line 87
    iput-boolean v1, p0, Lcom/powervision/base/views/widget/WheelDecoration;->hasCenterItem:Z

    :goto_1
    if-gt p2, v3, :cond_6

    .line 89
    iget v1, p0, Lcom/powervision/base/views/widget/WheelDecoration;->itemCount:I

    if-ge p2, v1, :cond_3

    goto :goto_2

    .line 90
    :cond_3
    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getItemCount()I

    move-result v1

    iget v4, p0, Lcom/powervision/base/views/widget/WheelDecoration;->itemCount:I

    sub-int/2addr v1, v4

    if-lt p2, v1, :cond_4

    goto :goto_3

    .line 92
    :cond_4
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 93
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-direct {v6, v4, v5, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz v2, :cond_5

    .line 95
    invoke-direct {p0, v0}, Lcom/powervision/base/views/widget/WheelDecoration;->translateX(Landroid/graphics/Rect;)F

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v9

    move-object v4, p0

    move-object v5, p1

    move v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/powervision/base/views/widget/WheelDecoration;->drawVerticalItem(Landroid/graphics/Canvas;Landroid/graphics/Rect;IFF)V

    goto :goto_2

    .line 97
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v9

    move-object v4, p0

    move-object v5, p1

    move v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/powervision/base/views/widget/WheelDecoration;->drawHorizontalItem(Landroid/graphics/Canvas;Landroid/graphics/Rect;IFF)V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 100
    :cond_6
    :goto_3
    invoke-virtual {p0, p1, v0, v2}, Lcom/powervision/base/views/widget/WheelDecoration;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    return-void
.end method
