.class Lme/jingbin/library/stickyview/StickyHeaderHandler$1;
.super Ljava/lang/Object;
.source "StickyHeaderHandler.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/jingbin/library/stickyview/StickyHeaderHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/jingbin/library/stickyview/StickyHeaderHandler;


# direct methods
.method constructor <init>(Lme/jingbin/library/stickyview/StickyHeaderHandler;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler$1;->this$0:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 45
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler$1;->this$0:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    invoke-static {v0}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->access$000(Lme/jingbin/library/stickyview/StickyHeaderHandler;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getVisibility()I

    move-result v0

    .line 46
    iget-object v1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler$1;->this$0:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    invoke-static {v1}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->access$100(Lme/jingbin/library/stickyview/StickyHeaderHandler;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler$1;->this$0:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    invoke-static {v1}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->access$100(Lme/jingbin/library/stickyview/StickyHeaderHandler;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
