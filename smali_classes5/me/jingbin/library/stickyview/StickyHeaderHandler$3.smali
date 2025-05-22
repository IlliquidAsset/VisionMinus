.class Lme/jingbin/library/stickyview/StickyHeaderHandler$3;
.super Ljava/lang/Object;
.source "StickyHeaderHandler.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/jingbin/library/stickyview/StickyHeaderHandler;->checkTranslation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field previous:I

.field final synthetic this$0:Lme/jingbin/library/stickyview/StickyHeaderHandler;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lme/jingbin/library/stickyview/StickyHeaderHandler;Landroid/view/View;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler$3;->this$0:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    iput-object p2, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iget-object p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler$3;->this$0:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    invoke-static {p1}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->access$300(Lme/jingbin/library/stickyview/StickyHeaderHandler;)I

    move-result p1

    iput p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler$3;->previous:I

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 265
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 266
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler$3;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 268
    :cond_0
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler$3;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 270
    :goto_0
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler$3;->this$0:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    invoke-static {v0}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->access$100(Lme/jingbin/library/stickyview/StickyHeaderHandler;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler$3;->this$0:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    invoke-static {v0}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->access$300(Lme/jingbin/library/stickyview/StickyHeaderHandler;)I

    move-result v0

    .line 275
    iget-object v1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler$3;->this$0:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    invoke-static {v1}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->access$400(Lme/jingbin/library/stickyview/StickyHeaderHandler;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler$3;->previous:I

    if-eq v1, v0, :cond_2

    .line 276
    iget-object v2, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler$3;->this$0:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->access$500(Lme/jingbin/library/stickyview/StickyHeaderHandler;I)V

    :cond_2
    return-void
.end method
