.class Lme/jingbin/library/stickyview/StickyHeaderHandler$5;
.super Ljava/lang/Object;
.source "StickyHeaderHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/jingbin/library/stickyview/StickyHeaderHandler;->safeDetachHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/jingbin/library/stickyview/StickyHeaderHandler;

.field final synthetic val$cachedPosition:I


# direct methods
.method constructor <init>(Lme/jingbin/library/stickyview/StickyHeaderHandler;I)V
    .locals 0

    .line 370
    iput-object p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler$5;->this$0:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    iput p2, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler$5;->val$cachedPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 373
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler$5;->this$0:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    invoke-static {v0}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->access$800(Lme/jingbin/library/stickyview/StickyHeaderHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler$5;->this$0:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    iget v1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler$5;->val$cachedPosition:I

    invoke-static {v0, v1}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->access$900(Lme/jingbin/library/stickyview/StickyHeaderHandler;I)V

    :cond_0
    return-void
.end method
