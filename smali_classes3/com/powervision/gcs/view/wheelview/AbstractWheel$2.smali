.class Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;
.super Ljava/lang/Object;
.source "AbstractWheel.java"

# interfaces
.implements Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/wheelview/AbstractWheel;->initData(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/wheelview/AbstractWheel;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    iget-boolean v0, v0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mIsScrollingPerformed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->notifyScrollingListenersAboutEnd()V

    .line 220
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    iput-boolean v1, v0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mIsScrollingPerformed:Z

    .line 221
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->onScrollFinished()V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    iput v1, v0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mScrollingOffset:I

    .line 225
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->invalidate()V

    return-void
.end method

.method public onFling(I)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    iput p1, v0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mLastTempDirection:I

    return-void
.end method

.method public onJustify()V
    .locals 5

    .line 229
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    iget v0, v0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mScrollingOffset:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 231
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    iget v0, v0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mScrollingOffset:I

    .line 234
    iget-object v2, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    iget v2, v2, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mLastTempDirection:I

    mul-int v0, v0, v2

    const/4 v2, 0x0

    if-gez v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    iget v0, v0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mLastTempDirection:I

    if-ne v0, v1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    iget v3, v0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mCurrentItemIdx:I

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->isValidItemIndex(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    iget-object v0, v0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mScroller:Lcom/powervision/gcs/view/wheelview/WheelScroller;

    iget-object v3, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    iget v3, v3, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mScrollingOffset:I

    iget-object v4, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    invoke-virtual {v4}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->getItemDimension()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v3, v2}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->scroll(II)V

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    iget v3, v0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mCurrentItemIdx:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v3}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->isValidItemIndex(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    iget-object v0, v0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mScroller:Lcom/powervision/gcs/view/wheelview/WheelScroller;

    iget-object v3, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    iget v3, v3, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mScrollingOffset:I

    iget-object v4, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    invoke-virtual {v4}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->getItemDimension()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3, v2}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->scroll(II)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 249
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    iget-object v0, v0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mScroller:Lcom/powervision/gcs/view/wheelview/WheelScroller;

    iget-object v1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    iget v1, v1, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mScrollingOffset:I

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->scroll(II)V

    :cond_2
    return-void
.end method

.method public onScroll(I)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    invoke-static {v0, p1}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->access$000(Lcom/powervision/gcs/view/wheelview/AbstractWheel;I)V

    .line 206
    iget-object p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->getMaxOverScrollDimension()I

    move-result p1

    .line 207
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    iget v0, v0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mScrollingOffset:I

    if-le v0, p1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    iput p1, v0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mScrollingOffset:I

    .line 209
    iget-object p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    iget-object p1, p1, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mScroller:Lcom/powervision/gcs/view/wheelview/WheelScroller;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->stopScrolling()V

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    iget v0, v0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mScrollingOffset:I

    neg-int p1, p1

    if-ge v0, p1, :cond_1

    .line 211
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    iput p1, v0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mScrollingOffset:I

    .line 212
    iget-object p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    iget-object p1, p1, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mScroller:Lcom/powervision/gcs/view/wheelview/WheelScroller;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/wheelview/WheelScroller;->stopScrolling()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStarted()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mIsScrollingPerformed:Z

    .line 181
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->notifyScrollingListenersAboutStart()V

    .line 182
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->onScrollStarted()V

    return-void
.end method

.method public onTouch()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->onScrollTouched()V

    return-void
.end method

.method public onTouchUp()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    iget-boolean v0, v0, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->mIsScrollingPerformed:Z

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$2;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->onScrollTouchedUp()V

    :cond_0
    return-void
.end method
