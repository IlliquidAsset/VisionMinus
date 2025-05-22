.class public Lcom/powervision/base/views/loopview/LoopView;
.super Landroid/view/View;
.source "LoopView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/views/loopview/LoopView$IndexString;,
        Lcom/powervision/base/views/loopview/LoopView$ACTION;
    }
.end annotation


# static fields
.field private static final DEFAULT_LINE_SPACE:F = 1.0f

.field private static final DEFAULT_TEXT_SIZE:I

.field private static final DEFAULT_VISIBIE_ITEMS:I = 0x9

.field public static final SCROLL_STATE_DRAGGING:I = 0x2

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SCROLLING:I = 0x3

.field public static final SCROLL_STATE_SETTING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LoopView"


# instance fields
.field private availableData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private availablePaint:Landroid/graphics/Paint;

.field centerTextColor:I

.field change:I

.field private context:Landroid/content/Context;

.field currentScrollState:I

.field dividerColor:I

.field drawingStrings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/powervision/base/views/loopview/LoopView$IndexString;",
            ">;"
        }
    .end annotation
.end field

.field firstLineY:I

.field private flingGestureDetector:Landroid/view/GestureDetector;

.field halfCircumference:I

.field handler:Landroid/os/Handler;

.field initPosition:I

.field isLoop:Z

.field itemTextHeight:I

.field items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/base/views/loopview/LoopView$IndexString;",
            ">;"
        }
    .end annotation
.end field

.field itemsVisibleCount:I

.field lastScrollState:I

.field lineSpacingMultiplier:F

.field mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mOffset:I

.field mOnItemScrollListener:Lcom/powervision/base/views/loopview/OnItemScrollListener;

.field measuredHeight:I

.field measuredWidth:I

.field onItemSelectedListener:Lcom/powervision/base/views/loopview/OnItemSelectedListener;

.field outerTextColor:I

.field private paddingLeft:I

.field private paddingRight:I

.field private paintCenterText:Landroid/graphics/Paint;

.field private paintIndicator:Landroid/graphics/Paint;

.field private paintOuterText:Landroid/graphics/Paint;

.field preCurrentIndex:I

.field private previousY:F

.field radius:I

.field private scaleX:F

.field secondLineY:I

.field startTime:J

.field private tempRect:Landroid/graphics/Rect;

.field textHeight:I

.field textSize:I

.field totalScrollY:I

.field private typeface:Landroid/graphics/Typeface;

.field private unAvailablePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41700000    # 15.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/powervision/base/views/loopview/LoopView;->DEFAULT_TEXT_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 180
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v0, 0x3f866666    # 1.05f

    .line 39
    iput v0, p0, Lcom/powervision/base/views/loopview/LoopView;->scaleX:F

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/powervision/base/views/loopview/LoopView;->lastScrollState:I

    const/4 v1, 0x1

    .line 53
    iput v1, p0, Lcom/powervision/base/views/loopview/LoopView;->currentScrollState:I

    .line 67
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/base/views/loopview/LoopView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 112
    iput v0, p0, Lcom/powervision/base/views/loopview/LoopView;->mOffset:I

    const-wide/16 v0, 0x0

    .line 114
    iput-wide v0, p0, Lcom/powervision/base/views/loopview/LoopView;->startTime:J

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->tempRect:Landroid/graphics/Rect;

    .line 120
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->typeface:Landroid/graphics/Typeface;

    const/4 v0, 0x0

    .line 181
    invoke-direct {p0, p1, v0}, Lcom/powervision/base/views/loopview/LoopView;->initLoopView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 185
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x3f866666    # 1.05f

    .line 39
    iput v0, p0, Lcom/powervision/base/views/loopview/LoopView;->scaleX:F

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/powervision/base/views/loopview/LoopView;->lastScrollState:I

    const/4 v1, 0x1

    .line 53
    iput v1, p0, Lcom/powervision/base/views/loopview/LoopView;->currentScrollState:I

    .line 67
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/base/views/loopview/LoopView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 112
    iput v0, p0, Lcom/powervision/base/views/loopview/LoopView;->mOffset:I

    const-wide/16 v0, 0x0

    .line 114
    iput-wide v0, p0, Lcom/powervision/base/views/loopview/LoopView;->startTime:J

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->tempRect:Landroid/graphics/Rect;

    .line 120
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->typeface:Landroid/graphics/Typeface;

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/powervision/base/views/loopview/LoopView;->initLoopView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 190
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, 0x3f866666    # 1.05f

    .line 39
    iput p3, p0, Lcom/powervision/base/views/loopview/LoopView;->scaleX:F

    const/4 p3, 0x0

    .line 52
    iput p3, p0, Lcom/powervision/base/views/loopview/LoopView;->lastScrollState:I

    const/4 v0, 0x1

    .line 53
    iput v0, p0, Lcom/powervision/base/views/loopview/LoopView;->currentScrollState:I

    .line 67
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 112
    iput p3, p0, Lcom/powervision/base/views/loopview/LoopView;->mOffset:I

    const-wide/16 v0, 0x0

    .line 114
    iput-wide v0, p0, Lcom/powervision/base/views/loopview/LoopView;->startTime:J

    .line 116
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/powervision/base/views/loopview/LoopView;->tempRect:Landroid/graphics/Rect;

    .line 120
    sget-object p3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object p3, p0, Lcom/powervision/base/views/loopview/LoopView;->typeface:Landroid/graphics/Typeface;

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/powervision/base/views/loopview/LoopView;->initLoopView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private changeScrollState(I)V
    .locals 2

    .line 371
    iget v0, p0, Lcom/powervision/base/views/loopview/LoopView;->currentScrollState:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->handler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    iget v0, p0, Lcom/powervision/base/views/loopview/LoopView;->currentScrollState:I

    iput v0, p0, Lcom/powervision/base/views/loopview/LoopView;->lastScrollState:I

    .line 373
    iput p1, p0, Lcom/powervision/base/views/loopview/LoopView;->currentScrollState:I

    :cond_0
    return-void
.end method

.method private drawAvailableText(Landroid/graphics/Canvas;I)V
    .locals 3

    .line 647
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->drawingStrings:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/views/loopview/LoopView$IndexString;

    invoke-static {v0}, Lcom/powervision/base/views/loopview/LoopView$IndexString;->access$000(Lcom/powervision/base/views/loopview/LoopView$IndexString;)Ljava/lang/String;

    move-result-object v0

    .line 648
    iget-object v1, p0, Lcom/powervision/base/views/loopview/LoopView;->availableData:Ljava/util/List;

    invoke-static {v1}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/powervision/base/views/loopview/LoopView;->availableData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->drawingStrings:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/views/loopview/LoopView$IndexString;

    invoke-static {v0}, Lcom/powervision/base/views/loopview/LoopView$IndexString;->access$000(Lcom/powervision/base/views/loopview/LoopView$IndexString;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/base/views/loopview/LoopView;->drawingStrings:Ljava/util/HashMap;

    .line 650
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/powervision/base/views/loopview/LoopView$IndexString;

    invoke-static {p2}, Lcom/powervision/base/views/loopview/LoopView$IndexString;->access$000(Lcom/powervision/base/views/loopview/LoopView$IndexString;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/powervision/base/views/loopview/LoopView;->paintOuterText:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/powervision/base/views/loopview/LoopView;->tempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v1, v2}, Lcom/powervision/base/views/loopview/LoopView;->getTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result p2

    int-to-float p2, p2

    .line 651
    invoke-direct {p0}, Lcom/powervision/base/views/loopview/LoopView;->getDrawingY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/powervision/base/views/loopview/LoopView;->availablePaint:Landroid/graphics/Paint;

    .line 649
    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->drawingStrings:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/views/loopview/LoopView$IndexString;

    invoke-static {v0}, Lcom/powervision/base/views/loopview/LoopView$IndexString;->access$000(Lcom/powervision/base/views/loopview/LoopView$IndexString;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/base/views/loopview/LoopView;->drawingStrings:Ljava/util/HashMap;

    .line 654
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/powervision/base/views/loopview/LoopView$IndexString;

    invoke-static {p2}, Lcom/powervision/base/views/loopview/LoopView$IndexString;->access$000(Lcom/powervision/base/views/loopview/LoopView$IndexString;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/powervision/base/views/loopview/LoopView;->paintOuterText:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/powervision/base/views/loopview/LoopView;->tempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v1, v2}, Lcom/powervision/base/views/loopview/LoopView;->getTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result p2

    int-to-float p2, p2

    .line 655
    invoke-direct {p0}, Lcom/powervision/base/views/loopview/LoopView;->getDrawingY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/powervision/base/views/loopview/LoopView;->unAvailablePaint:Landroid/graphics/Paint;

    .line 653
    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private drawCenterText(Landroid/graphics/Canvas;I)V
    .locals 3

    .line 635
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->drawingStrings:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/views/loopview/LoopView$IndexString;

    invoke-static {v0}, Lcom/powervision/base/views/loopview/LoopView$IndexString;->access$000(Lcom/powervision/base/views/loopview/LoopView$IndexString;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/base/views/loopview/LoopView;->drawingStrings:Ljava/util/HashMap;

    .line 636
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/powervision/base/views/loopview/LoopView$IndexString;

    invoke-static {p2}, Lcom/powervision/base/views/loopview/LoopView$IndexString;->access$000(Lcom/powervision/base/views/loopview/LoopView$IndexString;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/powervision/base/views/loopview/LoopView;->paintOuterText:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/powervision/base/views/loopview/LoopView;->tempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v1, v2}, Lcom/powervision/base/views/loopview/LoopView;->getTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result p2

    int-to-float p2, p2

    .line 637
    invoke-direct {p0}, Lcom/powervision/base/views/loopview/LoopView;->getDrawingY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/powervision/base/views/loopview/LoopView;->paintCenterText:Landroid/graphics/Paint;

    .line 635
    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawOuterText(Landroid/graphics/Canvas;I)V
    .locals 3

    .line 629
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->drawingStrings:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/views/loopview/LoopView$IndexString;

    invoke-static {v0}, Lcom/powervision/base/views/loopview/LoopView$IndexString;->access$000(Lcom/powervision/base/views/loopview/LoopView$IndexString;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/base/views/loopview/LoopView;->drawingStrings:Ljava/util/HashMap;

    .line 630
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/powervision/base/views/loopview/LoopView$IndexString;

    invoke-static {p2}, Lcom/powervision/base/views/loopview/LoopView$IndexString;->access$000(Lcom/powervision/base/views/loopview/LoopView$IndexString;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/powervision/base/views/loopview/LoopView;->paintOuterText:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/powervision/base/views/loopview/LoopView;->tempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v1, v2}, Lcom/powervision/base/views/loopview/LoopView;->getTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result p2

    int-to-float p2, p2

    .line 631
    invoke-direct {p0}, Lcom/powervision/base/views/loopview/LoopView;->getDrawingY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/powervision/base/views/loopview/LoopView;->paintOuterText:Landroid/graphics/Paint;

    .line 629
    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawUnAvailableText(Landroid/graphics/Canvas;I)V
    .locals 3

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x7

    if-eq p2, v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->drawingStrings:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/views/loopview/LoopView$IndexString;

    invoke-static {v0}, Lcom/powervision/base/views/loopview/LoopView$IndexString;->access$000(Lcom/powervision/base/views/loopview/LoopView$IndexString;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/base/views/loopview/LoopView;->drawingStrings:Ljava/util/HashMap;

    .line 668
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/powervision/base/views/loopview/LoopView$IndexString;

    invoke-static {p2}, Lcom/powervision/base/views/loopview/LoopView$IndexString;->access$000(Lcom/powervision/base/views/loopview/LoopView$IndexString;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/powervision/base/views/loopview/LoopView;->paintOuterText:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/powervision/base/views/loopview/LoopView;->tempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v1, v2}, Lcom/powervision/base/views/loopview/LoopView;->getTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result p2

    int-to-float p2, p2

    .line 669
    invoke-direct {p0}, Lcom/powervision/base/views/loopview/LoopView;->getDrawingY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/powervision/base/views/loopview/LoopView;->unAvailablePaint:Landroid/graphics/Paint;

    .line 667
    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private getDrawingY()I
    .locals 2

    .line 685
    iget v0, p0, Lcom/powervision/base/views/loopview/LoopView;->itemTextHeight:I

    iget v1, p0, Lcom/powervision/base/views/loopview/LoopView;->textHeight:I

    if-le v0, v1, :cond_0

    sub-int v1, v0, v1

    .line 686
    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method private getTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I
    .locals 2

    .line 695
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0, p3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 696
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    .line 697
    iget p2, p0, Lcom/powervision/base/views/loopview/LoopView;->scaleX:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 698
    iget p2, p0, Lcom/powervision/base/views/loopview/LoopView;->measuredWidth:I

    iget p3, p0, Lcom/powervision/base/views/loopview/LoopView;->paddingLeft:I

    sub-int/2addr p2, p3

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p3

    return p2
.end method

.method private initLoopView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 195
    iput-object p1, p0, Lcom/powervision/base/views/loopview/LoopView;->context:Landroid/content/Context;

    .line 196
    new-instance v0, Lcom/powervision/base/views/loopview/MessageHandler;

    invoke-direct {v0, p0}, Lcom/powervision/base/views/loopview/MessageHandler;-><init>(Lcom/powervision/base/views/loopview/LoopView;)V

    iput-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->handler:Landroid/os/Handler;

    .line 197
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/powervision/base/views/loopview/LoopViewGestureListener;

    invoke-direct {v1, p0}, Lcom/powervision/base/views/loopview/LoopViewGestureListener;-><init>(Lcom/powervision/base/views/loopview/LoopView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->flingGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    .line 198
    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 200
    sget-object v0, Lcom/powervision/base/R$styleable;->LoopView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 202
    sget p2, Lcom/powervision/base/R$styleable;->LoopView_awv_textsize:I

    sget v0, Lcom/powervision/base/views/loopview/LoopView;->DEFAULT_TEXT_SIZE:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/base/views/loopview/LoopView;->textSize:I

    .line 203
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iget v0, p0, Lcom/powervision/base/views/loopview/LoopView;->textSize:I

    int-to-float v0, v0

    mul-float p2, p2, v0

    float-to-int p2, p2

    iput p2, p0, Lcom/powervision/base/views/loopview/LoopView;->textSize:I

    .line 204
    sget p2, Lcom/powervision/base/R$styleable;->LoopView_awv_lineSpace:I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/powervision/base/views/loopview/LoopView;->lineSpacingMultiplier:F

    .line 205
    sget p2, Lcom/powervision/base/R$styleable;->LoopView_awv_centerTextColor:I

    const v0, -0xcececf

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/base/views/loopview/LoopView;->centerTextColor:I

    .line 206
    sget p2, Lcom/powervision/base/R$styleable;->LoopView_awv_outerTextColor:I

    const v0, -0x505051

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/base/views/loopview/LoopView;->outerTextColor:I

    .line 207
    sget p2, Lcom/powervision/base/R$styleable;->LoopView_awv_dividerTextColor:I

    const v0, -0x3a3a3b

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/base/views/loopview/LoopView;->dividerColor:I

    .line 208
    sget p2, Lcom/powervision/base/R$styleable;->LoopView_awv_itemsVisibleCount:I

    const/16 v0, 0x9

    .line 209
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/base/views/loopview/LoopView;->itemsVisibleCount:I

    .line 210
    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_0

    .line 211
    iput v0, p0, Lcom/powervision/base/views/loopview/LoopView;->itemsVisibleCount:I

    .line 213
    :cond_0
    sget p2, Lcom/powervision/base/R$styleable;->LoopView_awv_isLoop:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/powervision/base/views/loopview/LoopView;->isLoop:Z

    .line 214
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 217
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/powervision/base/views/loopview/LoopView;->drawingStrings:Ljava/util/HashMap;

    .line 218
    iput v1, p0, Lcom/powervision/base/views/loopview/LoopView;->totalScrollY:I

    const/4 p1, -0x1

    .line 219
    iput p1, p0, Lcom/powervision/base/views/loopview/LoopView;->initPosition:I

    return-void
.end method

.method private initPaintsIfPossible()V
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->paintOuterText:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->paintOuterText:Landroid/graphics/Paint;

    .line 240
    iget v2, p0, Lcom/powervision/base/views/loopview/LoopView;->outerTextColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 241
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->paintOuterText:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 242
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->paintOuterText:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/powervision/base/views/loopview/LoopView;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 243
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->paintOuterText:Landroid/graphics/Paint;

    iget v2, p0, Lcom/powervision/base/views/loopview/LoopView;->textSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->paintCenterText:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 248
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->paintCenterText:Landroid/graphics/Paint;

    .line 249
    iget v2, p0, Lcom/powervision/base/views/loopview/LoopView;->centerTextColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 251
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->paintCenterText:Landroid/graphics/Paint;

    iget v2, p0, Lcom/powervision/base/views/loopview/LoopView;->scaleX:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 252
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->paintCenterText:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/powervision/base/views/loopview/LoopView;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 253
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->paintCenterText:Landroid/graphics/Paint;

    iget v2, p0, Lcom/powervision/base/views/loopview/LoopView;->textSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->paintIndicator:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 257
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->paintIndicator:Landroid/graphics/Paint;

    .line 258
    iget v2, p0, Lcom/powervision/base/views/loopview/LoopView;->dividerColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->paintIndicator:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->availablePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_3

    .line 263
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->availablePaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    .line 264
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 265
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->availablePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 266
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->availablePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/powervision/base/views/loopview/LoopView;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 267
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->availablePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/powervision/base/views/loopview/LoopView;->textSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 270
    :cond_3
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->unAvailablePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_4

    .line 271
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->unAvailablePaint:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    .line 272
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 273
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->unAvailablePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 274
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->unAvailablePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/powervision/base/views/loopview/LoopView;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 275
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->unAvailablePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/powervision/base/views/loopview/LoopView;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_4
    return-void
.end method

.method private printMethodStackTrace(Ljava/lang/String;)V
    .locals 9

    .line 356
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "printMethodStackTrace "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    .line 359
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    array-length p1, v0

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    :goto_0
    const/4 v3, 0x4

    if-lt p1, v3, :cond_1

    .line 361
    aget-object v4, v0, p1

    .line 362
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    const-string v4, "%s(%d).%s"

    invoke-static {v5, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le p1, v3, :cond_0

    const-string v3, "-->"

    .line 364
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 367
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "printMethodStackTrace"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private remeasure()V
    .locals 7

    .line 280
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->items:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/base/views/loopview/LoopView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/powervision/base/views/loopview/LoopView;->measuredWidth:I

    .line 286
    invoke-virtual {p0}, Lcom/powervision/base/views/loopview/LoopView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/powervision/base/views/loopview/LoopView;->measuredHeight:I

    .line 288
    iget v1, p0, Lcom/powervision/base/views/loopview/LoopView;->measuredWidth:I

    if-eqz v1, :cond_4

    if-nez v0, :cond_1

    goto :goto_1

    .line 292
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/base/views/loopview/LoopView;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/powervision/base/views/loopview/LoopView;->paddingLeft:I

    .line 293
    invoke-virtual {p0}, Lcom/powervision/base/views/loopview/LoopView;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/powervision/base/views/loopview/LoopView;->paddingRight:I

    .line 295
    iget v1, p0, Lcom/powervision/base/views/loopview/LoopView;->measuredWidth:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/powervision/base/views/loopview/LoopView;->measuredWidth:I

    .line 297
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->paintCenterText:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/powervision/base/views/loopview/LoopView;->tempRect:Landroid/graphics/Rect;

    const-string v2, "\u661f\u671f"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 298
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/powervision/base/views/loopview/LoopView;->textHeight:I

    .line 299
    iget v0, p0, Lcom/powervision/base/views/loopview/LoopView;->measuredHeight:I

    int-to-double v1, v0

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double v1, v1, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v5

    double-to-int v1, v1

    iput v1, p0, Lcom/powervision/base/views/loopview/LoopView;->halfCircumference:I

    int-to-float v1, v1

    .line 301
    iget v2, p0, Lcom/powervision/base/views/loopview/LoopView;->lineSpacingMultiplier:F

    iget v5, p0, Lcom/powervision/base/views/loopview/LoopView;->itemsVisibleCount:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    mul-float v5, v5, v2

    div-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/powervision/base/views/loopview/LoopView;->itemTextHeight:I

    .line 303
    div-int/lit8 v5, v0, 0x2

    iput v5, p0, Lcom/powervision/base/views/loopview/LoopView;->radius:I

    int-to-float v5, v0

    int-to-float v6, v1

    mul-float v6, v6, v2

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 304
    iput v5, p0, Lcom/powervision/base/views/loopview/LoopView;->firstLineY:I

    int-to-float v0, v0

    int-to-float v1, v1

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    div-float/2addr v0, v6

    float-to-int v0, v0

    .line 305
    iput v0, p0, Lcom/powervision/base/views/loopview/LoopView;->secondLineY:I

    .line 306
    iget v0, p0, Lcom/powervision/base/views/loopview/LoopView;->initPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 307
    iget-boolean v0, p0, Lcom/powervision/base/views/loopview/LoopView;->isLoop:Z

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/2addr v0, v4

    iput v0, p0, Lcom/powervision/base/views/loopview/LoopView;->initPosition:I

    goto :goto_0

    .line 310
    :cond_2
    iput v3, p0, Lcom/powervision/base/views/loopview/LoopView;->initPosition:I

    .line 314
    :cond_3
    :goto_0
    iget v0, p0, Lcom/powervision/base/views/loopview/LoopView;->initPosition:I

    iput v0, p0, Lcom/powervision/base/views/loopview/LoopView;->preCurrentIndex:I

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public cancelFuture()V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 345
    iput-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x0

    .line 346
    invoke-direct {p0, v0}, Lcom/powervision/base/views/loopview/LoopView;->changeScrollState(I)V

    :cond_0
    return-void
.end method

.method public convertData(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/powervision/base/views/loopview/LoopView$IndexString;",
            ">;"
        }
    .end annotation

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 433
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 434
    new-instance v2, Lcom/powervision/base/views/loopview/LoopView$IndexString;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Lcom/powervision/base/views/loopview/LoopView$IndexString;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getCurrentItem()Ljava/lang/String;
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->items:Ljava/util/List;

    iget v1, p0, Lcom/powervision/base/views/loopview/LoopView;->preCurrentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/views/loopview/LoopView$IndexString;

    invoke-static {v0}, Lcom/powervision/base/views/loopview/LoopView$IndexString;->access$000(Lcom/powervision/base/views/loopview/LoopView$IndexString;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectedItem()I
    .locals 1

    .line 440
    iget v0, p0, Lcom/powervision/base/views/loopview/LoopView;->preCurrentIndex:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 514
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 515
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->items:Ljava/util/List;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_9

    .line 519
    :cond_0
    iget v0, p0, Lcom/powervision/base/views/loopview/LoopView;->totalScrollY:I

    int-to-float v0, v0

    iget v1, p0, Lcom/powervision/base/views/loopview/LoopView;->lineSpacingMultiplier:F

    iget v2, p0, Lcom/powervision/base/views/loopview/LoopView;->itemTextHeight:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/powervision/base/views/loopview/LoopView;->change:I

    .line 520
    iget v1, p0, Lcom/powervision/base/views/loopview/LoopView;->initPosition:I

    iget-object v2, p0, Lcom/powervision/base/views/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v0, v2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/powervision/base/views/loopview/LoopView;->preCurrentIndex:I

    .line 522
    iget-boolean v0, p0, Lcom/powervision/base/views/loopview/LoopView;->isLoop:Z

    const/4 v2, 0x0

    if-nez v0, :cond_2

    if-gez v1, :cond_1

    .line 524
    iput v2, p0, Lcom/powervision/base/views/loopview/LoopView;->preCurrentIndex:I

    .line 526
    :cond_1
    iget v0, p0, Lcom/powervision/base/views/loopview/LoopView;->preCurrentIndex:I

    iget-object v1, p0, Lcom/powervision/base/views/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_4

    .line 527
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/powervision/base/views/loopview/LoopView;->preCurrentIndex:I

    goto :goto_0

    :cond_2
    if-gez v1, :cond_3

    .line 531
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/powervision/base/views/loopview/LoopView;->preCurrentIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/powervision/base/views/loopview/LoopView;->preCurrentIndex:I

    .line 533
    :cond_3
    iget v0, p0, Lcom/powervision/base/views/loopview/LoopView;->preCurrentIndex:I

    iget-object v1, p0, Lcom/powervision/base/views/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_4

    .line 534
    iget v0, p0, Lcom/powervision/base/views/loopview/LoopView;->preCurrentIndex:I

    iget-object v1, p0, Lcom/powervision/base/views/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/powervision/base/views/loopview/LoopView;->preCurrentIndex:I

    .line 538
    :cond_4
    :goto_0
    iget v0, p0, Lcom/powervision/base/views/loopview/LoopView;->totalScrollY:I

    int-to-float v0, v0

    iget v1, p0, Lcom/powervision/base/views/loopview/LoopView;->lineSpacingMultiplier:F

    iget v3, p0, Lcom/powervision/base/views/loopview/LoopView;->itemTextHeight:I

    int-to-float v3, v3

    mul-float v1, v1, v3

    rem-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    .line 541
    :goto_1
    iget v3, p0, Lcom/powervision/base/views/loopview/LoopView;->itemsVisibleCount:I

    if-ge v1, v3, :cond_a

    .line 542
    iget v4, p0, Lcom/powervision/base/views/loopview/LoopView;->preCurrentIndex:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v1

    sub-int/2addr v4, v3

    .line 543
    iget-boolean v3, p0, Lcom/powervision/base/views/loopview/LoopView;->isLoop:Z

    if-eqz v3, :cond_7

    :goto_2
    if-gez v4, :cond_5

    .line 545
    iget-object v3, p0, Lcom/powervision/base/views/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v4, v3

    goto :goto_2

    .line 547
    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/powervision/base/views/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v4, v3, :cond_6

    .line 548
    iget-object v3, p0, Lcom/powervision/base/views/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v4, v3

    goto :goto_3

    .line 550
    :cond_6
    iget-object v3, p0, Lcom/powervision/base/views/loopview/LoopView;->drawingStrings:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/powervision/base/views/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    if-gez v4, :cond_8

    .line 553
    iget-object v3, p0, Lcom/powervision/base/views/loopview/LoopView;->drawingStrings:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/powervision/base/views/loopview/LoopView$IndexString;

    invoke-direct {v5}, Lcom/powervision/base/views/loopview/LoopView$IndexString;-><init>()V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 554
    :cond_8
    iget-object v3, p0, Lcom/powervision/base/views/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v4, v3, :cond_9

    .line 556
    iget-object v3, p0, Lcom/powervision/base/views/loopview/LoopView;->drawingStrings:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/powervision/base/views/loopview/LoopView$IndexString;

    invoke-direct {v5}, Lcom/powervision/base/views/loopview/LoopView$IndexString;-><init>()V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 559
    :cond_9
    iget-object v3, p0, Lcom/powervision/base/views/loopview/LoopView;->drawingStrings:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/powervision/base/views/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 563
    :cond_a
    iget v1, p0, Lcom/powervision/base/views/loopview/LoopView;->paddingLeft:I

    int-to-float v4, v1

    iget v1, p0, Lcom/powervision/base/views/loopview/LoopView;->firstLineY:I

    int-to-float v5, v1

    iget v3, p0, Lcom/powervision/base/views/loopview/LoopView;->measuredWidth:I

    int-to-float v6, v3

    int-to-float v7, v1

    iget-object v8, p0, Lcom/powervision/base/views/loopview/LoopView;->paintIndicator:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 564
    iget v1, p0, Lcom/powervision/base/views/loopview/LoopView;->paddingLeft:I

    int-to-float v4, v1

    iget v1, p0, Lcom/powervision/base/views/loopview/LoopView;->secondLineY:I

    int-to-float v5, v1

    iget v3, p0, Lcom/powervision/base/views/loopview/LoopView;->measuredWidth:I

    int-to-float v6, v3

    int-to-float v7, v1

    iget-object v8, p0, Lcom/powervision/base/views/loopview/LoopView;->paintIndicator:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    .line 567
    :goto_5
    iget v3, p0, Lcom/powervision/base/views/loopview/LoopView;->itemsVisibleCount:I

    if-ge v1, v3, :cond_10

    .line 568
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 569
    iget v3, p0, Lcom/powervision/base/views/loopview/LoopView;->itemTextHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/powervision/base/views/loopview/LoopView;->lineSpacingMultiplier:F

    mul-float v3, v3, v4

    int-to-float v4, v1

    mul-float v4, v4, v3

    int-to-float v5, v0

    sub-float/2addr v4, v5

    float-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double v4, v4, v6

    .line 570
    iget v8, p0, Lcom/powervision/base/views/loopview/LoopView;->halfCircumference:I

    int-to-double v8, v8

    div-double/2addr v4, v8

    cmpl-double v8, v4, v6

    if-gez v8, :cond_f

    const-wide/16 v6, 0x0

    cmpg-double v8, v4, v6

    if-gtz v8, :cond_b

    goto/16 :goto_7

    .line 574
    :cond_b
    iget v6, p0, Lcom/powervision/base/views/loopview/LoopView;->radius:I

    int-to-double v6, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    iget v10, p0, Lcom/powervision/base/views/loopview/LoopView;->radius:I

    int-to-double v10, v10

    mul-double v8, v8, v10

    sub-double/2addr v6, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    iget v10, p0, Lcom/powervision/base/views/loopview/LoopView;->itemTextHeight:I

    int-to-double v10, v10

    mul-double v8, v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-int v6, v6

    const/4 v7, 0x0

    int-to-float v8, v6

    .line 575
    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v7, 0x3f800000    # 1.0f

    .line 576
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {p1, v7, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 577
    iget v4, p0, Lcom/powervision/base/views/loopview/LoopView;->firstLineY:I

    if-gt v6, v4, :cond_c

    iget v5, p0, Lcom/powervision/base/views/loopview/LoopView;->itemTextHeight:I

    add-int/2addr v5, v6

    if-lt v5, v4, :cond_c

    .line 579
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 580
    iget v4, p0, Lcom/powervision/base/views/loopview/LoopView;->measuredWidth:I

    iget v5, p0, Lcom/powervision/base/views/loopview/LoopView;->firstLineY:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v2, v2, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 581
    invoke-direct {p0, p1, v1}, Lcom/powervision/base/views/loopview/LoopView;->drawAvailableText(Landroid/graphics/Canvas;I)V

    .line 582
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 583
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 584
    iget v4, p0, Lcom/powervision/base/views/loopview/LoopView;->firstLineY:I

    sub-int/2addr v4, v6

    iget v5, p0, Lcom/powervision/base/views/loopview/LoopView;->measuredWidth:I

    float-to-int v3, v3

    invoke-virtual {p1, v2, v4, v5, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 585
    invoke-direct {p0, p1, v1}, Lcom/powervision/base/views/loopview/LoopView;->drawAvailableText(Landroid/graphics/Canvas;I)V

    .line 586
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6

    .line 587
    :cond_c
    iget v4, p0, Lcom/powervision/base/views/loopview/LoopView;->secondLineY:I

    if-gt v6, v4, :cond_d

    iget v5, p0, Lcom/powervision/base/views/loopview/LoopView;->itemTextHeight:I

    add-int/2addr v5, v6

    if-lt v5, v4, :cond_d

    .line 589
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 590
    iget v4, p0, Lcom/powervision/base/views/loopview/LoopView;->measuredWidth:I

    iget v5, p0, Lcom/powervision/base/views/loopview/LoopView;->secondLineY:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v2, v2, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 591
    invoke-direct {p0, p1, v1}, Lcom/powervision/base/views/loopview/LoopView;->drawAvailableText(Landroid/graphics/Canvas;I)V

    .line 592
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 593
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 594
    iget v4, p0, Lcom/powervision/base/views/loopview/LoopView;->secondLineY:I

    sub-int/2addr v4, v6

    iget v5, p0, Lcom/powervision/base/views/loopview/LoopView;->measuredWidth:I

    float-to-int v3, v3

    invoke-virtual {p1, v2, v4, v5, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 595
    invoke-direct {p0, p1, v1}, Lcom/powervision/base/views/loopview/LoopView;->drawAvailableText(Landroid/graphics/Canvas;I)V

    .line 596
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6

    .line 597
    :cond_d
    iget v4, p0, Lcom/powervision/base/views/loopview/LoopView;->firstLineY:I

    if-lt v6, v4, :cond_e

    iget v4, p0, Lcom/powervision/base/views/loopview/LoopView;->itemTextHeight:I

    add-int/2addr v4, v6

    iget v5, p0, Lcom/powervision/base/views/loopview/LoopView;->secondLineY:I

    if-gt v4, v5, :cond_e

    .line 599
    iget v4, p0, Lcom/powervision/base/views/loopview/LoopView;->measuredWidth:I

    float-to-int v3, v3

    invoke-virtual {p1, v2, v2, v4, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 600
    invoke-direct {p0, p1, v1}, Lcom/powervision/base/views/loopview/LoopView;->drawAvailableText(Landroid/graphics/Canvas;I)V

    goto :goto_6

    .line 603
    :cond_e
    iget v4, p0, Lcom/powervision/base/views/loopview/LoopView;->measuredWidth:I

    float-to-int v3, v3

    invoke-virtual {p1, v2, v2, v4, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 604
    invoke-direct {p0, p1, v1}, Lcom/powervision/base/views/loopview/LoopView;->drawAvailableText(Landroid/graphics/Canvas;I)V

    .line 606
    :goto_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_8

    .line 572
    :cond_f
    :goto_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 613
    :cond_10
    iget p1, p0, Lcom/powervision/base/views/loopview/LoopView;->currentScrollState:I

    iget v3, p0, Lcom/powervision/base/views/loopview/LoopView;->lastScrollState:I

    if-eq p1, v3, :cond_11

    .line 615
    iput p1, p0, Lcom/powervision/base/views/loopview/LoopView;->lastScrollState:I

    .line 616
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->mOnItemScrollListener:Lcom/powervision/base/views/loopview/OnItemScrollListener;

    if-eqz v0, :cond_11

    .line 617
    invoke-virtual {p0}, Lcom/powervision/base/views/loopview/LoopView;->getSelectedItem()I

    move-result v2

    iget v4, p0, Lcom/powervision/base/views/loopview/LoopView;->currentScrollState:I

    iget v5, p0, Lcom/powervision/base/views/loopview/LoopView;->totalScrollY:I

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/powervision/base/views/loopview/OnItemScrollListener;->onItemScrollStateChanged(Lcom/powervision/base/views/loopview/LoopView;IIII)V

    .line 621
    :cond_11
    iget p1, p0, Lcom/powervision/base/views/loopview/LoopView;->currentScrollState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_12

    const/4 v0, 0x3

    if-ne p1, v0, :cond_13

    .line 622
    :cond_12
    iget-object p1, p0, Lcom/powervision/base/views/loopview/LoopView;->mOnItemScrollListener:Lcom/powervision/base/views/loopview/OnItemScrollListener;

    if-eqz p1, :cond_13

    .line 623
    invoke-virtual {p0}, Lcom/powervision/base/views/loopview/LoopView;->getSelectedItem()I

    move-result v0

    iget v1, p0, Lcom/powervision/base/views/loopview/LoopView;->currentScrollState:I

    iget v2, p0, Lcom/powervision/base/views/loopview/LoopView;->totalScrollY:I

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/powervision/base/views/loopview/OnItemScrollListener;->onItemScrolling(Lcom/powervision/base/views/loopview/LoopView;III)V

    :cond_13
    :goto_9
    return-void
.end method

.method protected final onItemSelected()V
    .locals 3

    .line 454
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->onItemSelectedListener:Lcom/powervision/base/views/loopview/OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 455
    new-instance v0, Lcom/powervision/base/views/loopview/OnItemSelectedRunnable;

    invoke-direct {v0, p0}, Lcom/powervision/base/views/loopview/OnItemSelectedRunnable;-><init>(Lcom/powervision/base/views/loopview/LoopView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/powervision/base/views/loopview/LoopView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 703
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 704
    invoke-direct {p0}, Lcom/powervision/base/views/loopview/LoopView;->initPaintsIfPossible()V

    .line 705
    invoke-direct {p0}, Lcom/powervision/base/views/loopview/LoopView;->remeasure()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 711
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->flingGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 712
    iget v1, p0, Lcom/powervision/base/views/loopview/LoopView;->lineSpacingMultiplier:F

    iget v2, p0, Lcom/powervision/base/views/loopview/LoopView;->itemTextHeight:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    .line 714
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    if-nez v0, :cond_1

    .line 747
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 748
    iget v0, p0, Lcom/powervision/base/views/loopview/LoopView;->radius:I

    int-to-float v2, v0

    sub-float/2addr v2, p1

    int-to-float p1, v0

    div-float/2addr v2, p1

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->acos(D)D

    move-result-wide v5

    iget p1, p0, Lcom/powervision/base/views/loopview/LoopView;->radius:I

    int-to-double v7, p1

    mul-double v5, v5, v7

    const/high16 p1, 0x40000000    # 2.0f

    div-float p1, v1, p1

    float-to-double v7, p1

    add-double/2addr v5, v7

    float-to-double v7, v1

    div-double/2addr v5, v7

    double-to-int p1, v5

    .line 751
    iget v0, p0, Lcom/powervision/base/views/loopview/LoopView;->totalScrollY:I

    int-to-float v0, v0

    rem-float/2addr v0, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    .line 752
    iget v2, p0, Lcom/powervision/base/views/loopview/LoopView;->itemsVisibleCount:I

    div-int/2addr v2, v4

    sub-int/2addr p1, v2

    int-to-float p1, p1

    mul-float p1, p1, v1

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/powervision/base/views/loopview/LoopView;->mOffset:I

    .line 754
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/powervision/base/views/loopview/LoopView;->startTime:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x78

    cmp-long p1, v0, v4

    if-lez p1, :cond_0

    .line 755
    sget-object p1, Lcom/powervision/base/views/loopview/LoopView$ACTION;->DRAG:Lcom/powervision/base/views/loopview/LoopView$ACTION;

    invoke-virtual {p0, p1}, Lcom/powervision/base/views/loopview/LoopView;->smoothScroll(Lcom/powervision/base/views/loopview/LoopView$ACTION;)V

    goto :goto_0

    .line 757
    :cond_0
    sget-object p1, Lcom/powervision/base/views/loopview/LoopView$ACTION;->CLICK:Lcom/powervision/base/views/loopview/LoopView$ACTION;

    invoke-virtual {p0, p1}, Lcom/powervision/base/views/loopview/LoopView;->smoothScroll(Lcom/powervision/base/views/loopview/LoopView$ACTION;)V

    .line 760
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/powervision/base/views/loopview/LoopView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 761
    invoke-virtual {p0}, Lcom/powervision/base/views/loopview/LoopView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    .line 725
    :cond_2
    iget v0, p0, Lcom/powervision/base/views/loopview/LoopView;->previousY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v0, v2

    .line 726
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/powervision/base/views/loopview/LoopView;->previousY:F

    .line 728
    iget p1, p0, Lcom/powervision/base/views/loopview/LoopView;->totalScrollY:I

    int-to-float p1, p1

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/powervision/base/views/loopview/LoopView;->totalScrollY:I

    .line 730
    iget-boolean p1, p0, Lcom/powervision/base/views/loopview/LoopView;->isLoop:Z

    if-nez p1, :cond_4

    .line 731
    iget p1, p0, Lcom/powervision/base/views/loopview/LoopView;->initPosition:I

    neg-int p1, p1

    int-to-float p1, p1

    mul-float p1, p1, v1

    .line 732
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    iget v2, p0, Lcom/powervision/base/views/loopview/LoopView;->initPosition:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v0, v0, v1

    .line 734
    iget v1, p0, Lcom/powervision/base/views/loopview/LoopView;->totalScrollY:I

    int-to-float v2, v1

    cmpg-float v2, v2, p1

    if-gez v2, :cond_3

    float-to-int p1, p1

    .line 735
    iput p1, p0, Lcom/powervision/base/views/loopview/LoopView;->totalScrollY:I

    goto :goto_1

    :cond_3
    int-to-float p1, v1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    float-to-int p1, v0

    .line 737
    iput p1, p0, Lcom/powervision/base/views/loopview/LoopView;->totalScrollY:I

    .line 740
    :cond_4
    :goto_1
    invoke-direct {p0, v4}, Lcom/powervision/base/views/loopview/LoopView;->changeScrollState(I)V

    goto :goto_2

    .line 716
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/base/views/loopview/LoopView;->startTime:J

    .line 717
    invoke-virtual {p0}, Lcom/powervision/base/views/loopview/LoopView;->cancelFuture()V

    .line 718
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/powervision/base/views/loopview/LoopView;->previousY:F

    .line 719
    invoke-virtual {p0}, Lcom/powervision/base/views/loopview/LoopView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 720
    invoke-virtual {p0}, Lcom/powervision/base/views/loopview/LoopView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 766
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/powervision/base/views/loopview/LoopView;->invalidate()V

    return v3
.end method

.method protected final scrollBy(F)V
    .locals 7

    .line 334
    invoke-virtual {p0}, Lcom/powervision/base/views/loopview/LoopView;->cancelFuture()V

    .line 337
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/powervision/base/views/loopview/InertiaTimerTask;

    invoke-direct {v1, p0, p1}, Lcom/powervision/base/views/loopview/InertiaTimerTask;-><init>(Lcom/powervision/base/views/loopview/LoopView;F)V

    const/16 p1, 0xa

    int-to-long v4, p1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/base/views/loopview/LoopView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 p1, 0x2

    .line 339
    invoke-direct {p0, p1}, Lcom/powervision/base/views/loopview/LoopView;->changeScrollState(I)V

    return-void
.end method

.method public setAvailableData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 676
    invoke-static {p1}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 679
    :cond_0
    iput-object p1, p0, Lcom/powervision/base/views/loopview/LoopView;->availableData:Ljava/util/List;

    .line 680
    invoke-virtual {p0}, Lcom/powervision/base/views/loopview/LoopView;->invalidate()V

    return-void
.end method

.method public setCenterTextColor(I)V
    .locals 1

    .line 139
    iput p1, p0, Lcom/powervision/base/views/loopview/LoopView;->centerTextColor:I

    .line 140
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->paintCenterText:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 2

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  getSelectedItem() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/powervision/base/views/loopview/LoopView;->getSelectedItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoopView"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->items:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 479
    invoke-virtual {p0}, Lcom/powervision/base/views/loopview/LoopView;->getSelectedItem()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 480
    iput p1, p0, Lcom/powervision/base/views/loopview/LoopView;->initPosition:I

    const/4 p1, 0x0

    .line 481
    iput p1, p0, Lcom/powervision/base/views/loopview/LoopView;->totalScrollY:I

    .line 482
    iput p1, p0, Lcom/powervision/base/views/loopview/LoopView;->mOffset:I

    const/4 p1, 0x1

    .line 483
    invoke-direct {p0, p1}, Lcom/powervision/base/views/loopview/LoopView;->changeScrollState(I)V

    .line 484
    invoke-virtual {p0}, Lcom/powervision/base/views/loopview/LoopView;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDividerColor(I)V
    .locals 1

    .line 164
    iput p1, p0, Lcom/powervision/base/views/loopview/LoopView;->dividerColor:I

    .line 165
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->paintIndicator:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public final setInitPosition(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 407
    iput p1, p0, Lcom/powervision/base/views/loopview/LoopView;->initPosition:I

    goto :goto_0

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->items:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 410
    iput p1, p0, Lcom/powervision/base/views/loopview/LoopView;->initPosition:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 426
    invoke-virtual {p0, p1}, Lcom/powervision/base/views/loopview/LoopView;->convertData(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/base/views/loopview/LoopView;->items:Ljava/util/List;

    .line 427
    invoke-direct {p0}, Lcom/powervision/base/views/loopview/LoopView;->remeasure()V

    .line 428
    invoke-virtual {p0}, Lcom/powervision/base/views/loopview/LoopView;->invalidate()V

    return-void
.end method

.method public setItemsVisibleCount(I)V
    .locals 1

    .line 228
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    return-void

    .line 231
    :cond_0
    iget v0, p0, Lcom/powervision/base/views/loopview/LoopView;->itemsVisibleCount:I

    if-eq p1, v0, :cond_1

    .line 232
    iput p1, p0, Lcom/powervision/base/views/loopview/LoopView;->itemsVisibleCount:I

    .line 233
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/powervision/base/views/loopview/LoopView;->drawingStrings:Ljava/util/HashMap;

    :cond_1
    return-void
.end method

.method public setLineSpacingMultiplier(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 129
    iput p1, p0, Lcom/powervision/base/views/loopview/LoopView;->lineSpacingMultiplier:F

    :cond_0
    return-void
.end method

.method public final setListener(Lcom/powervision/base/views/loopview/OnItemSelectedListener;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/powervision/base/views/loopview/LoopView;->onItemSelectedListener:Lcom/powervision/base/views/loopview/OnItemSelectedListener;

    return-void
.end method

.method public setNotLoop()V
    .locals 1

    const/4 v0, 0x0

    .line 384
    iput-boolean v0, p0, Lcom/powervision/base/views/loopview/LoopView;->isLoop:Z

    return-void
.end method

.method public final setOnItemScrollListener(Lcom/powervision/base/views/loopview/OnItemScrollListener;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/powervision/base/views/loopview/LoopView;->mOnItemScrollListener:Lcom/powervision/base/views/loopview/OnItemScrollListener;

    return-void
.end method

.method public setOuterTextColor(I)V
    .locals 1

    .line 152
    iput p1, p0, Lcom/powervision/base/views/loopview/LoopView;->outerTextColor:I

    .line 153
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->paintOuterText:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 0

    .line 465
    iput p1, p0, Lcom/powervision/base/views/loopview/LoopView;->scaleX:F

    return-void
.end method

.method public final setTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/powervision/base/views/loopview/LoopView;->textSize:I

    .line 395
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->paintOuterText:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    int-to-float p1, p1

    .line 396
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 398
    :cond_0
    iget-object p1, p0, Lcom/powervision/base/views/loopview/LoopView;->paintCenterText:Landroid/graphics/Paint;

    if-eqz p1, :cond_1

    .line 399
    iget v0, p0, Lcom/powervision/base/views/loopview/LoopView;->textSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_1
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/powervision/base/views/loopview/LoopView;->typeface:Landroid/graphics/Typeface;

    return-void
.end method

.method smoothScroll(Lcom/powervision/base/views/loopview/LoopView$ACTION;)V
    .locals 7

    .line 318
    invoke-virtual {p0}, Lcom/powervision/base/views/loopview/LoopView;->cancelFuture()V

    .line 319
    sget-object v0, Lcom/powervision/base/views/loopview/LoopView$ACTION;->FLING:Lcom/powervision/base/views/loopview/LoopView$ACTION;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/powervision/base/views/loopview/LoopView$ACTION;->DRAG:Lcom/powervision/base/views/loopview/LoopView$ACTION;

    if-ne p1, v0, :cond_2

    .line 320
    :cond_0
    iget p1, p0, Lcom/powervision/base/views/loopview/LoopView;->lineSpacingMultiplier:F

    iget v0, p0, Lcom/powervision/base/views/loopview/LoopView;->itemTextHeight:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    .line 321
    iget v0, p0, Lcom/powervision/base/views/loopview/LoopView;->totalScrollY:I

    int-to-float v0, v0

    rem-float/2addr v0, p1

    add-float/2addr v0, p1

    rem-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/powervision/base/views/loopview/LoopView;->mOffset:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 323
    iput p1, p0, Lcom/powervision/base/views/loopview/LoopView;->mOffset:I

    goto :goto_0

    :cond_1
    neg-int p1, v0

    .line 325
    iput p1, p0, Lcom/powervision/base/views/loopview/LoopView;->mOffset:I

    .line 328
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/powervision/base/views/loopview/SmoothScrollTimerTask;

    iget p1, p0, Lcom/powervision/base/views/loopview/LoopView;->mOffset:I

    invoke-direct {v1, p0, p1}, Lcom/powervision/base/views/loopview/SmoothScrollTimerTask;-><init>(Lcom/powervision/base/views/loopview/LoopView;I)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 329
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/base/views/loopview/LoopView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 p1, 0x3

    .line 330
    invoke-direct {p0, p1}, Lcom/powervision/base/views/loopview/LoopView;->changeScrollState(I)V

    return-void
.end method

.method public smoothScrollToItem(I)V
    .locals 8

    .line 494
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->items:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/powervision/base/views/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2

    .line 501
    iget-object p1, p0, Lcom/powervision/base/views/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 503
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/base/views/loopview/LoopView;->cancelFuture()V

    .line 504
    iget v0, p0, Lcom/powervision/base/views/loopview/LoopView;->lineSpacingMultiplier:F

    iget v1, p0, Lcom/powervision/base/views/loopview/LoopView;->itemTextHeight:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    .line 505
    invoke-virtual {p0}, Lcom/powervision/base/views/loopview/LoopView;->getSelectedItem()I

    move-result v1

    sub-int/2addr p1, v1

    if-nez p1, :cond_3

    return-void

    .line 508
    :cond_3
    iget-object v1, p0, Lcom/powervision/base/views/loopview/LoopView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/powervision/base/views/loopview/SmoothScrollTimerTask;

    int-to-float p1, p1

    mul-float v0, v0, p1

    float-to-int p1, v0

    invoke-direct {v2, p0, p1}, Lcom/powervision/base/views/loopview/SmoothScrollTimerTask;-><init>(Lcom/powervision/base/views/loopview/LoopView;I)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xf

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/base/views/loopview/LoopView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 509
    invoke-virtual {p0}, Lcom/powervision/base/views/loopview/LoopView;->invalidate()V

    :cond_4
    :goto_0
    return-void
.end method
