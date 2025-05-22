.class public Lcom/powervision/base/views/widget/WheelView;
.super Landroid/view/ViewGroup;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/views/widget/WheelView$WheelAdapter;,
        Lcom/powervision/base/views/widget/WheelView$WheelViewObserver;,
        Lcom/powervision/base/views/widget/WheelView$OnItemClickListener;,
        Lcom/powervision/base/views/widget/WheelView$OnItemSelectedListener;
    }
.end annotation


# static fields
.field public static final IDLE_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "WheelView"

.field public static final WHEEL_HORIZONTAL:I = 0x2

.field public static final WHEEL_VERTICAL:I = 0x1


# instance fields
.field private clickListener:Lcom/powervision/base/views/widget/WheelView$OnItemClickListener;

.field private context:Landroid/content/Context;

.field private dividerColor:I

.field private dividerSize:I

.field private gravity:I

.field private itemClickListener:Lcom/powervision/base/views/widget/WheelItemClickListener;

.field private itemCount:I

.field private itemSize:I

.field private lastSelectedPosition:I

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listener:Lcom/powervision/base/views/widget/WheelView$OnItemSelectedListener;

.field private mAdapter:Lcom/powervision/base/views/widget/WheelView$WheelAdapter;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private observer:Lcom/powervision/base/views/widget/WheelView$WheelViewObserver;

.field private orientation:I

.field private selectedPosition:I

.field private textColor:I

.field private textColorCenter:I

.field private textSize:F

.field private wheelAdapter:Lcom/powervision/base/views/widget/WheelViewAdapter;

.field private wheelDecoration:Lcom/powervision/base/views/widget/WheelDecoration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 90
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x1000000

    .line 33
    iput v0, p0, Lcom/powervision/base/views/widget/WheelView;->textColor:I

    const/high16 v1, -0x10000

    .line 37
    iput v1, p0, Lcom/powervision/base/views/widget/WheelView;->textColorCenter:I

    .line 41
    iput v0, p0, Lcom/powervision/base/views/widget/WheelView;->dividerColor:I

    const/high16 v0, 0x42100000    # 36.0f

    .line 45
    iput v0, p0, Lcom/powervision/base/views/widget/WheelView;->textSize:F

    const/4 v0, 0x3

    .line 49
    iput v0, p0, Lcom/powervision/base/views/widget/WheelView;->itemCount:I

    const/16 v0, 0x5a

    .line 53
    iput v0, p0, Lcom/powervision/base/views/widget/WheelView;->itemSize:I

    .line 57
    iput v0, p0, Lcom/powervision/base/views/widget/WheelView;->dividerSize:I

    const/4 v0, 0x1

    .line 61
    iput v0, p0, Lcom/powervision/base/views/widget/WheelView;->orientation:I

    const/4 v0, 0x2

    .line 65
    iput v0, p0, Lcom/powervision/base/views/widget/WheelView;->gravity:I

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lcom/powervision/base/views/widget/WheelView;->lastSelectedPosition:I

    .line 86
    iput v0, p0, Lcom/powervision/base/views/widget/WheelView;->selectedPosition:I

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, v0}, Lcom/powervision/base/views/widget/WheelView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x1000000

    .line 33
    iput v0, p0, Lcom/powervision/base/views/widget/WheelView;->textColor:I

    const/high16 v1, -0x10000

    .line 37
    iput v1, p0, Lcom/powervision/base/views/widget/WheelView;->textColorCenter:I

    .line 41
    iput v0, p0, Lcom/powervision/base/views/widget/WheelView;->dividerColor:I

    const/high16 v0, 0x42100000    # 36.0f

    .line 45
    iput v0, p0, Lcom/powervision/base/views/widget/WheelView;->textSize:F

    const/4 v0, 0x3

    .line 49
    iput v0, p0, Lcom/powervision/base/views/widget/WheelView;->itemCount:I

    const/16 v0, 0x5a

    .line 53
    iput v0, p0, Lcom/powervision/base/views/widget/WheelView;->itemSize:I

    .line 57
    iput v0, p0, Lcom/powervision/base/views/widget/WheelView;->dividerSize:I

    const/4 v0, 0x1

    .line 61
    iput v0, p0, Lcom/powervision/base/views/widget/WheelView;->orientation:I

    const/4 v0, 0x2

    .line 65
    iput v0, p0, Lcom/powervision/base/views/widget/WheelView;->gravity:I

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lcom/powervision/base/views/widget/WheelView;->lastSelectedPosition:I

    .line 86
    iput v0, p0, Lcom/powervision/base/views/widget/WheelView;->selectedPosition:I

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/powervision/base/views/widget/WheelView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, -0x1000000

    .line 33
    iput p3, p0, Lcom/powervision/base/views/widget/WheelView;->textColor:I

    const/high16 v0, -0x10000

    .line 37
    iput v0, p0, Lcom/powervision/base/views/widget/WheelView;->textColorCenter:I

    .line 41
    iput p3, p0, Lcom/powervision/base/views/widget/WheelView;->dividerColor:I

    const/high16 p3, 0x42100000    # 36.0f

    .line 45
    iput p3, p0, Lcom/powervision/base/views/widget/WheelView;->textSize:F

    const/4 p3, 0x3

    .line 49
    iput p3, p0, Lcom/powervision/base/views/widget/WheelView;->itemCount:I

    const/16 p3, 0x5a

    .line 53
    iput p3, p0, Lcom/powervision/base/views/widget/WheelView;->itemSize:I

    .line 57
    iput p3, p0, Lcom/powervision/base/views/widget/WheelView;->dividerSize:I

    const/4 p3, 0x1

    .line 61
    iput p3, p0, Lcom/powervision/base/views/widget/WheelView;->orientation:I

    const/4 p3, 0x2

    .line 65
    iput p3, p0, Lcom/powervision/base/views/widget/WheelView;->gravity:I

    const/4 p3, -0x1

    .line 85
    iput p3, p0, Lcom/powervision/base/views/widget/WheelView;->lastSelectedPosition:I

    .line 86
    iput p3, p0, Lcom/powervision/base/views/widget/WheelView;->selectedPosition:I

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/powervision/base/views/widget/WheelView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/base/views/widget/WheelView;)Lcom/powervision/base/views/widget/WheelView$OnItemSelectedListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/powervision/base/views/widget/WheelView;->listener:Lcom/powervision/base/views/widget/WheelView$OnItemSelectedListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/base/views/widget/WheelView;)Lcom/powervision/base/views/widget/WheelDecoration;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/powervision/base/views/widget/WheelView;->wheelDecoration:Lcom/powervision/base/views/widget/WheelDecoration;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/base/views/widget/WheelView;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/powervision/base/views/widget/WheelView;->selectedPosition:I

    return p0
.end method

.method static synthetic access$202(Lcom/powervision/base/views/widget/WheelView;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/powervision/base/views/widget/WheelView;->selectedPosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/powervision/base/views/widget/WheelView;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/powervision/base/views/widget/WheelView;->lastSelectedPosition:I

    return p0
.end method

.method static synthetic access$302(Lcom/powervision/base/views/widget/WheelView;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/powervision/base/views/widget/WheelView;->lastSelectedPosition:I

    return p1
.end method

.method static synthetic access$500(Lcom/powervision/base/views/widget/WheelView;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/powervision/base/views/widget/WheelView;->itemCount:I

    return p0
.end method

.method static synthetic access$600(Lcom/powervision/base/views/widget/WheelView;)Lcom/powervision/base/views/widget/WheelView$OnItemClickListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/powervision/base/views/widget/WheelView;->clickListener:Lcom/powervision/base/views/widget/WheelView$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/powervision/base/views/widget/WheelView;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/powervision/base/views/widget/WheelView;->dataSetChanged()V

    return-void
.end method

.method private dataSetChanged()V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/powervision/base/views/widget/WheelView;->wheelAdapter:Lcom/powervision/base/views/widget/WheelViewAdapter;

    invoke-virtual {v0}, Lcom/powervision/base/views/widget/WheelViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 105
    iput-object p1, p0, Lcom/powervision/base/views/widget/WheelView;->context:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 107
    sget-object v0, Lcom/powervision/base/R$styleable;->WheelView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 108
    sget v0, Lcom/powervision/base/R$styleable;->WheelView_wheelItemCount:I

    iget v1, p0, Lcom/powervision/base/views/widget/WheelView;->itemCount:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/base/views/widget/WheelView;->itemCount:I

    .line 109
    sget v0, Lcom/powervision/base/R$styleable;->WheelView_wheelTextColor:I

    iget v1, p0, Lcom/powervision/base/views/widget/WheelView;->textColor:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/base/views/widget/WheelView;->textColor:I

    .line 110
    sget v0, Lcom/powervision/base/R$styleable;->WheelView_wheelTextColorCenter:I

    iget v1, p0, Lcom/powervision/base/views/widget/WheelView;->textColorCenter:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/base/views/widget/WheelView;->textColorCenter:I

    .line 111
    sget v0, Lcom/powervision/base/R$styleable;->WheelView_wheelDividerColor:I

    iget v1, p0, Lcom/powervision/base/views/widget/WheelView;->dividerColor:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/base/views/widget/WheelView;->dividerColor:I

    .line 112
    sget v0, Lcom/powervision/base/R$styleable;->WheelView_wheelTextSize:I

    iget v1, p0, Lcom/powervision/base/views/widget/WheelView;->textSize:F

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/powervision/base/views/widget/WheelView;->textSize:F

    .line 113
    sget v0, Lcom/powervision/base/R$styleable;->WheelView_wheelItemSize:I

    iget v1, p0, Lcom/powervision/base/views/widget/WheelView;->itemSize:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/base/views/widget/WheelView;->itemSize:I

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ItemSize:   1= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/base/views/widget/WheelView;->itemSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WheelView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget v0, Lcom/powervision/base/R$styleable;->WheelView_wheelDividerSize:I

    iget v1, p0, Lcom/powervision/base/views/widget/WheelView;->dividerSize:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/base/views/widget/WheelView;->dividerSize:I

    .line 116
    sget v0, Lcom/powervision/base/R$styleable;->WheelView_wheelOrientation:I

    iget v1, p0, Lcom/powervision/base/views/widget/WheelView;->orientation:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/base/views/widget/WheelView;->orientation:I

    .line 117
    sget v0, Lcom/powervision/base/R$styleable;->WheelView_wheelGravity:I

    iget v1, p0, Lcom/powervision/base/views/widget/WheelView;->gravity:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/base/views/widget/WheelView;->gravity:I

    .line 118
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    :cond_0
    invoke-direct {p0, p1}, Lcom/powervision/base/views/widget/WheelView;->initRecyclerView(Landroid/content/Context;)V

    return-void
.end method

.method private initRecyclerView(Landroid/content/Context;)V
    .locals 9

    .line 133
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/base/views/widget/WheelView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x2

    .line 134
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOverScrollMode(I)V

    .line 135
    iget v0, p0, Lcom/powervision/base/views/widget/WheelView;->itemCount:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lcom/powervision/base/views/widget/WheelView;->itemSize:I

    mul-int v0, v0, v2

    .line 136
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/powervision/base/views/widget/WheelView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 137
    iget p1, p0, Lcom/powervision/base/views/widget/WheelView;->orientation:I

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 139
    iget-object p1, p0, Lcom/powervision/base/views/widget/WheelView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/powervision/base/views/widget/WheelView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 141
    new-instance p1, Landroidx/recyclerview/widget/LinearSnapHelper;

    invoke-direct {p1}, Landroidx/recyclerview/widget/LinearSnapHelper;-><init>()V

    iget-object v1, p0, Lcom/powervision/base/views/widget/WheelView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 143
    iget-object p1, p0, Lcom/powervision/base/views/widget/WheelView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/powervision/base/views/widget/WheelView;->orientation:I

    invoke-static {v1, v0}, Lcom/powervision/base/utils/WheelUtils;->createLayoutParams(II)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/powervision/base/views/widget/WheelView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    new-instance v2, Lcom/powervision/base/views/widget/WheelViewAdapter;

    iget p1, p0, Lcom/powervision/base/views/widget/WheelView;->orientation:I

    iget v0, p0, Lcom/powervision/base/views/widget/WheelView;->itemSize:I

    iget v1, p0, Lcom/powervision/base/views/widget/WheelView;->itemCount:I

    invoke-direct {v2, p1, v0, v1}, Lcom/powervision/base/views/widget/WheelViewAdapter;-><init>(III)V

    iput-object v2, p0, Lcom/powervision/base/views/widget/WheelView;->wheelAdapter:Lcom/powervision/base/views/widget/WheelViewAdapter;

    .line 146
    new-instance p1, Lcom/powervision/base/views/widget/SimpleWheelDecoration;

    iget v3, p0, Lcom/powervision/base/views/widget/WheelView;->gravity:I

    iget v4, p0, Lcom/powervision/base/views/widget/WheelView;->textColor:I

    iget v5, p0, Lcom/powervision/base/views/widget/WheelView;->textColorCenter:I

    iget v6, p0, Lcom/powervision/base/views/widget/WheelView;->textSize:F

    iget v7, p0, Lcom/powervision/base/views/widget/WheelView;->dividerColor:I

    iget v8, p0, Lcom/powervision/base/views/widget/WheelView;->dividerSize:I

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/powervision/base/views/widget/SimpleWheelDecoration;-><init>(Lcom/powervision/base/views/widget/WheelViewAdapter;IIIFII)V

    iput-object p1, p0, Lcom/powervision/base/views/widget/WheelView;->wheelDecoration:Lcom/powervision/base/views/widget/WheelDecoration;

    .line 148
    iget-object v0, p0, Lcom/powervision/base/views/widget/WheelView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 149
    iget-object p1, p0, Lcom/powervision/base/views/widget/WheelView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/powervision/base/views/widget/WheelView$1;

    invoke-direct {v0, p0}, Lcom/powervision/base/views/widget/WheelView$1;-><init>(Lcom/powervision/base/views/widget/WheelView;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 162
    iget-object p1, p0, Lcom/powervision/base/views/widget/WheelView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/powervision/base/views/widget/WheelView;->wheelAdapter:Lcom/powervision/base/views/widget/WheelViewAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private measureHorizontal(II)V
    .locals 3

    .line 181
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 182
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    .line 184
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 186
    invoke-virtual {p0, p1}, Lcom/powervision/base/views/widget/WheelView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/powervision/base/views/widget/WheelView;->getPaddingLeft()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/powervision/base/views/widget/WheelView;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    :goto_0
    if-ne v1, v2, :cond_1

    .line 190
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_1

    .line 192
    :cond_1
    iget p2, p0, Lcom/powervision/base/views/widget/WheelView;->itemSize:I

    invoke-virtual {p0}, Lcom/powervision/base/views/widget/WheelView;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/powervision/base/views/widget/WheelView;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 194
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/powervision/base/views/widget/WheelView;->setMeasuredDimension(II)V

    return-void
.end method

.method private measureVertical(II)V
    .locals 3

    .line 199
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 200
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_0

    .line 202
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 204
    invoke-virtual {p0, p2}, Lcom/powervision/base/views/widget/WheelView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 205
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Lcom/powervision/base/views/widget/WheelView;->getPaddingTop()I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {p0}, Lcom/powervision/base/views/widget/WheelView;->getPaddingBottom()I

    move-result v1

    add-int/2addr p2, v1

    :goto_0
    if-ne v0, v2, :cond_1

    .line 208
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_1

    .line 210
    :cond_1
    iget p1, p0, Lcom/powervision/base/views/widget/WheelView;->itemSize:I

    invoke-virtual {p0}, Lcom/powervision/base/views/widget/WheelView;->getPaddingLeft()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/powervision/base/views/widget/WheelView;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    .line 212
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/powervision/base/views/widget/WheelView;->setMeasuredDimension(II)V

    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/powervision/base/views/widget/WheelView$WheelAdapter;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/powervision/base/views/widget/WheelView;->mAdapter:Lcom/powervision/base/views/widget/WheelView$WheelAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/powervision/base/views/widget/WheelView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getItemCount()I

    move-result v0

    .line 272
    iget-object v1, p0, Lcom/powervision/base/views/widget/WheelView;->wheelDecoration:Lcom/powervision/base/views/widget/WheelDecoration;

    iget v1, v1, Lcom/powervision/base/views/widget/WheelDecoration;->centerItemPosition:I

    if-lt v1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 273
    :cond_0
    iget v1, p0, Lcom/powervision/base/views/widget/WheelView;->itemCount:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 274
    iget-object v1, p0, Lcom/powervision/base/views/widget/WheelView;->wheelDecoration:Lcom/powervision/base/views/widget/WheelDecoration;

    iget v1, v1, Lcom/powervision/base/views/widget/WheelDecoration;->centerItemPosition:I

    if-lt v1, v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/powervision/base/views/widget/WheelView;->wheelDecoration:Lcom/powervision/base/views/widget/WheelDecoration;

    iget v0, v0, Lcom/powervision/base/views/widget/WheelDecoration;->centerItemPosition:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 217
    invoke-virtual {p0}, Lcom/powervision/base/views/widget/WheelView;->getChildCount()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 220
    invoke-virtual {p0, p1}, Lcom/powervision/base/views/widget/WheelView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    .line 224
    iget p4, p0, Lcom/powervision/base/views/widget/WheelView;->orientation:I

    const/4 p5, 0x2

    if-ne p4, p5, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/powervision/base/views/widget/WheelView;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Lcom/powervision/base/views/widget/WheelView;->getPaddingLeft()I

    move-result p5

    sub-int/2addr p4, p5

    invoke-virtual {p0}, Lcom/powervision/base/views/widget/WheelView;->getPaddingRight()I

    move-result p5

    sub-int/2addr p4, p5

    sub-int/2addr p4, p2

    shr-int/lit8 p4, p4, 0x1

    .line 226
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "centerWidth "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "you"

    invoke-static {v0, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0}, Lcom/powervision/base/views/widget/WheelView;->getPaddingLeft()I

    move-result p5

    add-int/2addr p5, p4

    .line 228
    invoke-virtual {p0}, Lcom/powervision/base/views/widget/WheelView;->getPaddingTop()I

    move-result p4

    goto :goto_0

    .line 230
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/base/views/widget/WheelView;->getHeight()I

    move-result p4

    invoke-virtual {p0}, Lcom/powervision/base/views/widget/WheelView;->getPaddingTop()I

    move-result p5

    sub-int/2addr p4, p5

    invoke-virtual {p0}, Lcom/powervision/base/views/widget/WheelView;->getPaddingBottom()I

    move-result p5

    sub-int/2addr p4, p5

    sub-int/2addr p4, p3

    shr-int/lit8 p4, p4, 0x1

    .line 231
    invoke-virtual {p0}, Lcom/powervision/base/views/widget/WheelView;->getPaddingLeft()I

    move-result p5

    .line 232
    invoke-virtual {p0}, Lcom/powervision/base/views/widget/WheelView;->getPaddingTop()I

    move-result v0

    add-int/2addr p4, v0

    :goto_0
    add-int/2addr p2, p5

    add-int/2addr p3, p4

    .line 234
    invoke-virtual {p1, p5, p4, p2, p3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 167
    invoke-virtual {p0}, Lcom/powervision/base/views/widget/WheelView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 168
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void

    .line 171
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/powervision/base/views/widget/WheelView;->measureChildren(II)V

    .line 172
    iget v0, p0, Lcom/powervision/base/views/widget/WheelView;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 173
    invoke-direct {p0, p1, p2}, Lcom/powervision/base/views/widget/WheelView;->measureHorizontal(II)V

    goto :goto_0

    .line 175
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/powervision/base/views/widget/WheelView;->measureVertical(II)V

    :goto_0
    return-void
.end method

.method public setAdapter(Lcom/powervision/base/views/widget/WheelView$WheelAdapter;)V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/powervision/base/views/widget/WheelView;->mAdapter:Lcom/powervision/base/views/widget/WheelView$WheelAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0, v1}, Lcom/powervision/base/views/widget/WheelView$WheelAdapter;->setWheelViewObserver(Landroid/database/DataSetObserver;)V

    .line 241
    :cond_0
    iput-object p1, p0, Lcom/powervision/base/views/widget/WheelView;->mAdapter:Lcom/powervision/base/views/widget/WheelView$WheelAdapter;

    if-eqz p1, :cond_2

    .line 243
    iget-object v0, p0, Lcom/powervision/base/views/widget/WheelView;->observer:Lcom/powervision/base/views/widget/WheelView$WheelViewObserver;

    if-nez v0, :cond_1

    .line 244
    new-instance v0, Lcom/powervision/base/views/widget/WheelView$WheelViewObserver;

    invoke-direct {v0, p0, v1}, Lcom/powervision/base/views/widget/WheelView$WheelViewObserver;-><init>(Lcom/powervision/base/views/widget/WheelView;Lcom/powervision/base/views/widget/WheelView$1;)V

    iput-object v0, p0, Lcom/powervision/base/views/widget/WheelView;->observer:Lcom/powervision/base/views/widget/WheelView$WheelViewObserver;

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/powervision/base/views/widget/WheelView;->mAdapter:Lcom/powervision/base/views/widget/WheelView$WheelAdapter;

    iget-object v1, p0, Lcom/powervision/base/views/widget/WheelView;->observer:Lcom/powervision/base/views/widget/WheelView$WheelViewObserver;

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/widget/WheelView$WheelAdapter;->setWheelViewObserver(Landroid/database/DataSetObserver;)V

    const/4 v0, -0x1

    .line 247
    iput v0, p0, Lcom/powervision/base/views/widget/WheelView;->selectedPosition:I

    .line 248
    iput v0, p0, Lcom/powervision/base/views/widget/WheelView;->lastSelectedPosition:I

    .line 249
    iget-object v0, p0, Lcom/powervision/base/views/widget/WheelView;->wheelAdapter:Lcom/powervision/base/views/widget/WheelViewAdapter;

    iput-object p1, v0, Lcom/powervision/base/views/widget/WheelViewAdapter;->adapter:Lcom/powervision/base/views/widget/WheelView$WheelAdapter;

    .line 250
    iget-object p1, p0, Lcom/powervision/base/views/widget/WheelView;->wheelAdapter:Lcom/powervision/base/views/widget/WheelViewAdapter;

    invoke-virtual {p1}, Lcom/powervision/base/views/widget/WheelViewAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/powervision/base/views/widget/WheelView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 264
    iput p1, p0, Lcom/powervision/base/views/widget/WheelView;->lastSelectedPosition:I

    .line 265
    iget-object v0, p0, Lcom/powervision/base/views/widget/WheelView;->listener:Lcom/powervision/base/views/widget/WheelView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 266
    invoke-interface {v0, p0, p1}, Lcom/powervision/base/views/widget/WheelView$OnItemSelectedListener;->onItemSelected(Lcom/powervision/base/views/widget/WheelView;I)V

    :cond_0
    return-void
.end method

.method public setItemSize(I)V
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ItemSize:   2= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WheelView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iput p1, p0, Lcom/powervision/base/views/widget/WheelView;->itemSize:I

    .line 127
    iget-object p1, p0, Lcom/powervision/base/views/widget/WheelView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/powervision/base/views/widget/WheelView;->removeView(Landroid/view/View;)V

    .line 128
    iget-object p1, p0, Lcom/powervision/base/views/widget/WheelView;->context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/powervision/base/views/widget/WheelView;->initRecyclerView(Landroid/content/Context;)V

    .line 129
    invoke-virtual {p0}, Lcom/powervision/base/views/widget/WheelView;->requestLayout()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/powervision/base/views/widget/WheelView$OnItemClickListener;)V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/powervision/base/views/widget/WheelView;->itemClickListener:Lcom/powervision/base/views/widget/WheelItemClickListener;

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Lcom/powervision/base/views/widget/WheelView$2;

    invoke-virtual {p0}, Lcom/powervision/base/views/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/powervision/base/views/widget/WheelView$2;-><init>(Lcom/powervision/base/views/widget/WheelView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/base/views/widget/WheelView;->itemClickListener:Lcom/powervision/base/views/widget/WheelItemClickListener;

    .line 310
    iget-object v1, p0, Lcom/powervision/base/views/widget/WheelView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 312
    :cond_0
    iput-object p1, p0, Lcom/powervision/base/views/widget/WheelView;->clickListener:Lcom/powervision/base/views/widget/WheelView$OnItemClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Lcom/powervision/base/views/widget/WheelView$OnItemSelectedListener;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/powervision/base/views/widget/WheelView;->listener:Lcom/powervision/base/views/widget/WheelView$OnItemSelectedListener;

    return-void
.end method
