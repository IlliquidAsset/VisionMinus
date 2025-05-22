.class public abstract Lcom/powervision/gcs/view/wheelview/WheelScroller;
.super Ljava/lang/Object;
.source "WheelScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/wheelview/WheelScroller$WheelHandler;,
        Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;
    }
.end annotation


# static fields
.field public static final MIN_DELTA_FOR_SCROLLING:I = 0x1

.field private static final SCROLLING_DURATION:I = 0x190

.field public static final SCROLL_DIRECTION_DOWN:I = -0x1

.field public static final SCROLL_DIRECTION_UP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WheelScroller"


# instance fields
.field private final MESSAGE_JUSTIFY:I

.field private final MESSAGE_SCROLL:I

.field animationHandler:Lcom/powervision/gcs/view/wheelview/WheelScroller$WheelHandler;

.field private context:Landroid/content/Context;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private isScrollingPerformed:Z

.field private lastScrollPosition:I

.field private lastTouchedPosition:F

.field private listener:Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;

.field private mTouchSlop:I

.field protected scroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;)V
    .locals 3

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 234
    iput v0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->MESSAGE_SCROLL:I

    const/4 v1, 0x1

    .line 235
    iput v1, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->MESSAGE_JUSTIFY:I

    .line 267
    new-instance v1, Lcom/powervision/gcs/view/wheelview/WheelScroller$WheelHandler;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/wheelview/WheelScroller$WheelHandler;-><init>(Lcom/powervision/gcs/view/wheelview/WheelScroller;)V

    iput-object v1, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->animationHandler:Lcom/powervision/gcs/view/wheelview/WheelScroller$WheelHandler;

    .line 121
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/powervision/gcs/view/wheelview/WheelScroller$1;

    invoke-direct {v2, p0}, Lcom/powervision/gcs/view/wheelview/WheelScroller$1;-><init>(Lcom/powervision/gcs/view/wheelview/WheelScroller;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->gestureDetector:Landroid/view/GestureDetector;

    .line 140
    invoke-virtual {v1, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 142
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->scroller:Landroid/widget/Scroller;

    .line 143
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->mTouchSlop:I

    .line 145
    iput-object p2, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->listener:Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;

    .line 146
    iput-object p1, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/view/wheelview/WheelScroller;)Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->listener:Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/gcs/view/wheelview/WheelScroller;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->lastScrollPosition:I

    return p0
.end method

.method static synthetic access$102(Lcom/powervision/gcs/view/wheelview/WheelScroller;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->lastScrollPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/powervision/gcs/view/wheelview/WheelScroller;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->setNextMessage(I)V

    return-void
.end method

.method private clearMessages()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->animationHandler:Lcom/powervision/gcs/view/wheelview/WheelScroller$WheelHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/wheelview/WheelScroller$WheelHandler;->removeMessages(I)V

    .line 252
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->animationHandler:Lcom/powervision/gcs/view/wheelview/WheelScroller$WheelHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/wheelview/WheelScroller$WheelHandler;->removeMessages(I)V

    return-void
.end method

.method private justify()V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->listener:Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;

    invoke-interface {v0}, Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;->onJustify()V

    const/4 v0, 0x1

    .line 299
    invoke-direct {p0, v0}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->setNextMessage(I)V

    return-void
.end method

.method private setNextMessage(I)V
    .locals 1

    .line 243
    invoke-direct {p0}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->clearMessages()V

    .line 244
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->animationHandler:Lcom/powervision/gcs/view/wheelview/WheelScroller$WheelHandler;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/wheelview/WheelScroller$WheelHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private startScrolling()V
    .locals 1

    .line 306
    iget-boolean v0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->isScrollingPerformed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 307
    iput-boolean v0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->isScrollingPerformed:Z

    .line 308
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->listener:Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;

    invoke-interface {v0}, Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;->onStarted()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected finishScrolling()V
    .locals 1

    .line 316
    iget-boolean v0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->isScrollingPerformed:Z

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->listener:Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;

    invoke-interface {v0}, Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;->onFinished()V

    const/4 v0, 0x0

    .line 318
    iput-boolean v0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->isScrollingPerformed:Z

    :cond_0
    return-void
.end method

.method protected abstract getCurrentScrollerPosition()I
.end method

.method protected abstract getFinalScrollerPosition()I
.end method

.method protected abstract getMotionEventPosition(Landroid/view/MotionEvent;)F
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 272
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->getCurrentScrollerPosition()I

    move-result v0

    .line 273
    iget v1, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->lastScrollPosition:I

    sub-int/2addr v1, v0

    .line 274
    iput v0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->lastScrollPosition:I

    if-eqz v1, :cond_0

    .line 276
    iget-object v2, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->listener:Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;

    invoke-interface {v2, v1}, Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;->onScroll(I)V

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->getFinalScrollerPosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 283
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->animationHandler:Lcom/powervision/gcs/view/wheelview/WheelScroller$WheelHandler;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/wheelview/WheelScroller$WheelHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 287
    :cond_2
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_3

    .line 288
    invoke-direct {p0}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->justify()V

    goto :goto_0

    .line 290
    :cond_3
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->finishScrolling()V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->getMotionEventPosition(Landroid/view/MotionEvent;)F

    move-result v0

    iget v2, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->lastTouchedPosition:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 217
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->mTouchSlop:I

    div-int/lit8 v3, v3, 0xa

    if-le v2, v3, :cond_3

    .line 218
    invoke-direct {p0}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->startScrolling()V

    .line 219
    iget-object v2, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->listener:Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;

    invoke-interface {v2, v0}, Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;->onScroll(I)V

    .line 220
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->getMotionEventPosition(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->lastTouchedPosition:F

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->listener:Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;

    invoke-interface {v0}, Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;->onTouchUp()V

    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->getMotionEventPosition(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->lastTouchedPosition:F

    .line 202
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 203
    invoke-direct {p0}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->clearMessages()V

    .line 204
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->listener:Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;

    invoke-interface {v0}, Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;->onTouch()V

    .line 225
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 226
    :cond_4
    invoke-direct {p0}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->justify()V

    :cond_5
    return v1
.end method

.method public scroll(II)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    const/4 v0, 0x0

    .line 167
    iput v0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->lastScrollPosition:I

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x190

    .line 168
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->scrollerStartScroll(II)V

    .line 169
    invoke-direct {p0, v0}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->setNextMessage(I)V

    .line 170
    invoke-direct {p0}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->startScrolling()V

    return-void
.end method

.method protected abstract scrollerFling(III)V
.end method

.method protected abstract scrollerStartScroll(II)V
.end method

.method public setFriction(F)V
    .locals 2

    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller;->setFriction(F)V

    :cond_0
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 156
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->scroller:Landroid/widget/Scroller;

    return-void
.end method

.method public stopScrolling()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelScroller;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    return-void
.end method
