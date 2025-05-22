.class Lme/jingbin/library/stickyview/StickyHeaderHandler$4;
.super Ljava/lang/Object;
.source "StickyHeaderHandler.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/jingbin/library/stickyview/StickyHeaderHandler;->waitForLayoutAndRetry(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/jingbin/library/stickyview/StickyHeaderHandler;

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$visibleHeaders:Ljava/util/Map;


# direct methods
.method constructor <init>(Lme/jingbin/library/stickyview/StickyHeaderHandler;Landroid/view/View;Ljava/util/Map;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler$4;->this$0:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    iput-object p2, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler$4;->val$view:Landroid/view/View;

    iput-object p3, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler$4;->val$visibleHeaders:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 354
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 355
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler$4;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 357
    :cond_0
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler$4;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 359
    :goto_0
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler$4;->this$0:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    invoke-static {v0}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->access$100(Lme/jingbin/library/stickyview/StickyHeaderHandler;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 362
    :cond_1
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler$4;->this$0:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    invoke-static {v0}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->access$600(Lme/jingbin/library/stickyview/StickyHeaderHandler;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 363
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler$4;->this$0:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    iget-object v1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler$4;->val$visibleHeaders:Ljava/util/Map;

    invoke-static {v0, v1}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->access$700(Lme/jingbin/library/stickyview/StickyHeaderHandler;Ljava/util/Map;)V

    return-void
.end method
